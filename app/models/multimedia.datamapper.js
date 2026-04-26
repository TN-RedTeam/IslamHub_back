import { client } from '../services/index.service.js';

// Table `multimedia` = liens YouTube (titre, description, categorie, savant, etc.)
const multimediaDatamapper = {
  get: async function (id) {
    const result = await client.query('SELECT * FROM multimedia WHERE id = $1', [id]);
    return result.rows[0];
  },

  getAll: async function () {
    const result = await client.query('SELECT * FROM multimedia ORDER BY created_at DESC');
    return result.rows;
  },

  search: async function ({ q = '', categorie = '', page = 0, pageSize = 20 }) {
    const where = [];
    const params = [];
    let i = 1;

    if (q && q.trim()) {
      const term = `%${q.trim()}%`;
      where.push(`(titre ILIKE $${i} OR description ILIKE $${i} OR savant ILIKE $${i})`);
      params.push(term);
      i++;
    }

    if (categorie && categorie.trim()) {
      where.push(`categorie = $${i}`);
      params.push(categorie.trim());
      i++;
    }

    const whereSql = where.length ? `WHERE ${where.join(' AND ')}` : '';

    const countResult = await client.query(
      `SELECT COUNT(*)::int AS total FROM multimedia ${whereSql}`,
      params,
    );
    const total = countResult.rows[0].total;

    const offset = page * pageSize;
    const dataResult = await client.query(
      `SELECT * FROM multimedia ${whereSql} ORDER BY created_at DESC LIMIT $${i} OFFSET $${i + 1}`,
      [...params, pageSize, offset],
    );

    return { data: dataResult.rows, total, page, pageSize };
  },

  getCategories: async function () {
    const result = await client.query(
      `SELECT categorie, COUNT(*)::int AS count
         FROM multimedia
        WHERE categorie IS NOT NULL AND categorie <> ''
        GROUP BY categorie
        ORDER BY count DESC, categorie ASC`,
    );
    return result.rows;
  },

  create: async function (data) {
    const sql = `
      INSERT INTO multimedia
        (youtube_id, titre, description, categorie, savant, duree_secondes)
      VALUES ($1,$2,$3,$4,$5,$6)
      ON CONFLICT (youtube_id) DO NOTHING
      RETURNING *
    `;
    const result = await client.query(sql, [
      data.youtube_id,
      data.titre,
      data.description    ?? null,
      data.categorie      ?? '',
      data.savant         ?? null,
      data.duree_secondes ?? null,
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
        summary.errors.push({ youtube_id: item.youtube_id, error: err.message });
      }
    }
    return summary;
  },

  delete: async function (id) {
    const result = await client.query('DELETE FROM multimedia WHERE id = $1 RETURNING id', [id]);
    return result.rows[0];
  },
};

export default multimediaDatamapper;
