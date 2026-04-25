#!/usr/bin/env node
/**
 * Run once to add deduplication to existing tables:
 *   node scripts/migrate-add-hashes.js
 */
import 'dotenv/config';
import pg from 'pg';
import { hashArabic } from '../app/utils/arabic.utils.js';

const client = new pg.Client();
await client.connect();

// Tables qui ont une colonne texte_arabe
const TABLES = ['hadith', 'dhikr', 'douaa', 'coran', 'parole'];

try {
  await client.query('BEGIN');

  for (const table of TABLES) {
    await client.query(`ALTER TABLE ${table} ADD COLUMN IF NOT EXISTS arabe_hash TEXT`);
    console.log(`✓ ${table}: colonne arabe_hash ajoutée`);
  }

  for (const table of TABLES) {
    const { rows } = await client.query(
      `SELECT id, texte_arabe FROM ${table} WHERE arabe_hash IS NULL`
    );
    for (const row of rows) {
      const hash = hashArabic(row.texte_arabe);
      await client.query(`UPDATE ${table} SET arabe_hash = $1 WHERE id = $2`, [hash, row.id]);
    }
    console.log(`✓ ${table}: ${rows.length} hash(es) calculé(s)`);
  }

  for (const table of TABLES) {
    const { rowCount } = await client.query(`
      DELETE FROM ${table} a
      USING  ${table} b
      WHERE  a.arabe_hash = b.arabe_hash
        AND  a.id > b.id
    `);
    console.log(`  ${table}: ${rowCount > 0 ? `⚠️  ${rowCount} doublon(s) supprimé(s)` : '✓ aucun doublon'}`);
  }

  for (const table of TABLES) {
    await client.query(`ALTER TABLE ${table} ALTER COLUMN arabe_hash SET NOT NULL`);
    await client.query(`
      DO $$ BEGIN
        ALTER TABLE ${table} ADD CONSTRAINT uq_${table}_arabe_hash UNIQUE (arabe_hash);
      EXCEPTION WHEN duplicate_table THEN NULL;
      END $$;
    `);
    console.log(`✓ ${table}: contrainte UNIQUE appliquée`);
  }

  await client.query('COMMIT');
  console.log('\n✅ Migration terminée avec succès.');
} catch (err) {
  await client.query('ROLLBACK');
  console.error('❌ Erreur — rollback effectué:', err.message);
  process.exit(1);
} finally {
  await client.end();
}
