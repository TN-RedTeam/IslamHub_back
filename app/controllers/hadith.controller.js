import db from '../models/index.datamapper.js';
import { Error404 } from '../utils/errors/index.utils.js';

const hadithController = {
  getAll: async function (request, response, next) {
    try {
      const hadiths = await db.hadith.getAll();
      if (!hadiths) return next(new Error404('No hadith found'));
      const page     = Number(request.query.page     ?? 0);
      const pageSize = Number(request.query.pageSize ?? hadiths.length);
      response.json({ data: hadiths, total: hadiths.length, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting all hadiths';
      return next(error);
    }
  },

  search: async function (request, response, next) {
    try {
      const { q, tag } = request.query;
      const page     = Math.max(0, Number(request.query.page     ?? 0));
      const pageSize = Math.min(100, Math.max(1, Number(request.query.pageSize ?? 20)));
      const result = await db.hadith.search({ q, tag, page, pageSize });
      response.json({ data: result.data, total: result.total, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in searching hadiths';
      return next(error);
    }
  },

  getTags: async function (request, response, next) {
    try {
      const tags = await db.hadith.getTags();
      response.json(tags);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting hadith tags';
      return next(error);
    }
  },

  get: async function (request, response, next) {
    const { id } = request.params;
    try {
      const hadith = await db.hadith.get(id);
      if (!hadith) return next(new Error404('Hadith not found'));
      response.json(hadith);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting hadith';
      return next(error);
    }
  },

  create: async function (request, response, next) {
    try {
      const row = await db.hadith.create(request.body);
      if (!row)
        return response.status(409).json({ message: 'Ce hadith existe déjà dans la base de données.' });
      response.status(201).json(row);
    } catch (error) {
      next(error);
    }
  },

  createBulk: async function (request, response, next) {
    try {
      const { items } = request.body;
      const summary = await db.hadith.createBulk(items);
      response.json(summary);
    } catch (error) {
      next(error);
    }
  },
};

export default hadithController;
