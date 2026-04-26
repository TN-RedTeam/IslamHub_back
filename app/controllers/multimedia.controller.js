import db from '../models/index.datamapper.js';
import { Error404 } from '../utils/errors/index.utils.js';

const multimediaController = {
  getAll: async function (request, response, next) {
    try {
      const items = await db.multimedia.getAll();
      const page     = Number(request.query.page     ?? 0);
      const pageSize = Number(request.query.pageSize ?? items.length);
      response.json({ data: items, total: items.length, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting all multimedia';
      return next(error);
    }
  },

  get: async function (request, response, next) {
    const { id } = request.params;
    try {
      const item = await db.multimedia.get(id);
      if (!item) return next(new Error404('Multimedia not found'));
      response.json(item);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting multimedia';
      return next(error);
    }
  },

  search: async function (request, response, next) {
    try {
      const q         = String(request.query.q         ?? '');
      const categorie = String(request.query.categorie ?? '');
      const page      = Math.max(0, Number(request.query.page     ?? 0));
      let   pageSize  = Math.max(1, Number(request.query.pageSize ?? 20));
      if (pageSize > 100) pageSize = 100;

      const result = await db.multimedia.search({ q, categorie, page, pageSize });
      response.json(result);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in searching multimedia';
      return next(error);
    }
  },

  getCategories: async function (request, response, next) {
    try {
      const categories = await db.multimedia.getCategories();
      response.json({ data: categories });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting multimedia categories';
      return next(error);
    }
  },

  create: async function (request, response, next) {
    try {
      const row = await db.multimedia.create(request.body);
      if (!row)
        return response.status(409).json({ message: 'Cette vidéo existe déjà dans la base de données.' });
      response.status(201).json(row);
    } catch (error) { next(error); }
  },

  createBulk: async function (request, response, next) {
    try {
      const summary = await db.multimedia.createBulk(request.body.items);
      response.json(summary);
    } catch (error) { next(error); }
  },

  delete: async function (request, response, next) {
    const { id } = request.params;
    try {
      const row = await db.multimedia.delete(id);
      if (!row) return next(new Error404('Multimedia not found'));
      response.json({ deleted: row.id });
    } catch (error) { next(error); }
  },
};

export default multimediaController;
