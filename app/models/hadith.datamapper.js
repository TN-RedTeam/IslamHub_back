import { client } from '../services/index.service.js';
import { hashArabic } from '../utils/arabic.utils.js';

const hadithDatamapper = {
  get: async function (id) {
    const result = await client.query('SELECT * FROM hadith WHERE id = $1', [id]);
    return result.rows[0];
  },

  getAll: async function () {
    const result = await client.query('SELECT * FROM hadith');
    return result.rows;
  },

  create: async function (data) {
    const hash = hashArabic(data.texte_arabe);
    const sql = `
      INSERT INTO hadith
        (sujet, texte_arabe, texte_francais, "phonétique", explication, tag,
         rapporteur, narrateur, statut, arabe_hash)
      VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)
      ON CONFLICT (arabe_hash) DO NOTHING
      RETURNING *
    `;
    const result = await client.query(sql, [
      data.sujet,
      data.texte_arabe,
      data.texte_francais  ?? null,
      data['phonétique']   ?? null,
      data.explication     ?? null,
      data.tag             ?? '',
      data.rapporteur      ?? null,
      data.narrateur       ?? null,
      data.statut          ?? null,
      hash,
    ]);
    return result.rows[0]; // undefined si doublon
  },

  createBulk: async function (items) {
    const summary = { inserted: 0, duplicates: 0, errors: [] };
    for (const item of items) {
      try {
        const row = await this.create(item);
        if (row) summary.inserted++;
        else     summary.duplicates++;
      } catch (err) {
        summary.errors.push({ sujet: item.sujet, error: err.message });
      }
    }
    return summary;
  },
};

export default hadithDatamapper;
