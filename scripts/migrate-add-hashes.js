#!/usr/bin/env node
/**
 * Script de migration one-shot — à exécuter UNE SEULE FOIS :
 *   node scripts/migrate-add-hashes.js
 *
 * Effectue dans une transaction :
 *  1. Ajoute la colonne arabe_hash sur hadith, dhikr, douaa, croyance
 *  2. Calcule les hashs pour les lignes existantes (normalisation JS)
 *  3. Supprime les doublons (garde l'id le plus bas)
 *  4. Rend la colonne NOT NULL et ajoute la contrainte UNIQUE
 */
import 'dotenv/config';
import pg from 'pg';
import { hashArabic } from '../app/utils/arabic.utils.js';

const client = new pg.Client();
await client.connect();

const TABLES = ['hadith', 'dhikr', 'douaa', 'croyance'];

try {
  await client.query('BEGIN');

  // 1. Ajouter la colonne (nullable)
  for (const table of TABLES) {
    await client.query(`ALTER TABLE ${table} ADD COLUMN IF NOT EXISTS arabe_hash TEXT`);
    console.log(`✓ ${table}: colonne arabe_hash ajoutée`);
  }

  // 2. Calculer et remplir les hashs
  for (const table of TABLES) {
    const { rows } = await client.query(
      `SELECT id, texte_arabe FROM ${table} WHERE arabe_hash IS NULL`
    );
    for (const row of rows) {
      const hash = hashArabic(row.texte_arabe);
      await client.query(
        `UPDATE ${table} SET arabe_hash = $1 WHERE id = $2`,
        [hash, row.id]
      );
    }
    console.log(`✓ ${table}: ${rows.length} hash(es) calculé(s)`);
  }

  // 3. Supprimer les doublons (garde le plus ancien id)
  for (const table of TABLES) {
    const { rowCount } = await client.query(`
      DELETE FROM ${table} a
      USING  ${table} b
      WHERE  a.arabe_hash = b.arabe_hash
        AND  a.id > b.id
    `);
    const msg = rowCount > 0
      ? `⚠️  ${rowCount} doublon(s) supprimé(s)`
      : `✓ aucun doublon`;
    console.log(`  ${table}: ${msg}`);
  }

  // 4. NOT NULL + contrainte UNIQUE
  for (const table of TABLES) {
    await client.query(
      `ALTER TABLE ${table} ALTER COLUMN arabe_hash SET NOT NULL`
    );
    await client.query(`
      DO $$ BEGIN
        ALTER TABLE ${table}
          ADD CONSTRAINT uq_${table}_arabe_hash UNIQUE (arabe_hash);
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
