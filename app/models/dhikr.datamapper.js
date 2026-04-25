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

  search: async function ({ q, tag, page = 0, pageSize = 20 }) {
    const params = [];
    const conditions = [];
    let idx = 1;

    if (q && q.trim()) {
      const term = `%${q.trim()}%`;
      // dhikr table uses "tags" column (plural)
      conditions.push(`(
        texte_arabe    ILIKE $${idx} OR
        texte_francais ILIKE $${idx} OR
        sujet          ILIKE $${idx} OR
        commentaire    ILIKE $${idx} OR
        "phonétique"   ILIKE $${idx} OR
        explication    ILIKE $${idx} OR
        tags           ILIKE $${idx}
      )`);
      params.push(term);
      idx++;
    }

    if (tag) {
      conditions.push(`EXISTS (
        SELECT 1 FROM UNNEST(STRING_TO_ARRAY(dhikr.tags, ',')) AS t
        WHERE TRIM(t) ILIKE $${idx}
      )`);
      params.push(tag.trim());
      idx++;
    }

    const where = conditions.length > 0 ? `WHERE ${conditions.join(' AND ')}` : '';

    const countResult = await client.query(
      `SELECT COUNT(*) FROM dhikr ${where}`,
      params
    );
    const total = parseInt(countResult.rows[0].count, 10);

    const dataResult = await client.query(
      `SELECT * FROM dhikr ${where} ORDER BY id LIMIT $${idx} OFFSET $${idx + 1}`,
      [...params, pageSize, page * pageSize]
    );

    return { data: dataResult.rows, total };
  },

  getTags: async function () {
    const result = await client.query(`
      SELECT DISTINCT TRIM(t) AS tag
      FROM dhikr, UNNEST(STRING_TO_ARRAY(tags, ',')) AS t
      WHERE tags IS NOT NULL AND tags <> ''
      ORDER BY tag
    `);
    return result.rows.map(r => r.tag).filter(Boolean);
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
