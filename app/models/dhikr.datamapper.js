import { client } from '../services/index.service.js';
import { hashArabic } from '../utils/arabic.utils.js';

const dhikrDatamapper = {
  get: async function (id) {
    const result = await client.query('SELECT * FROM dhikr WHERE id = $1', [id]);
    return result.rows[0];
  },

  getAll: async function () {
    const result = await client.query('SELECT * FROM dhikr');
    return result.rows;
  },

  create: async function (data) {
    const hash = hashArabic(data.texte_arabe);
    const sql = `
      INSERT INTO dhikr
        (sujet, texte_arabe, texte_francais, "phonétique", explication, tag,
         commentaire, arabe_hash)
      VALUES ($1,$2,$3,$4,$5,$6,$7,$8)
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
      data.commentaire     ?? null,
      hash,
    ]);
    return result.rows[0];
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

export default dhikrDatamapper;
