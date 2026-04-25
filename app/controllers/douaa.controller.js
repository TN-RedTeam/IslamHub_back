import db from '../models/index.datamapper.js';
import { Error404 } from '../utils/errors/index.utils.js';

const douaaController = {
  getAll: async function (request, response, next) {
    try {
      const douaas = await db.douaa.getAll();
      if (!douaas) return next(new Error404('No douaa found'));
      const page     = Number(request.query.page     ?? 0);
      const pageSize = Number(request.query.pageSize ?? douaas.length);
      response.json({ data: douaas, total: douaas.length, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting all douaas';
      return next(error);
    }
  },

  get: async function (request, response, next) {
    const { id } = request.params;
    try {
      const douaa = await db.douaa.get(id);
      if (!douaa) return next(new Error404('Douaa not found'));
      response.json(douaa);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting douaa';
      return next(error);
    }
  },

  create: async function (request, response, next) {
    try {
      const row = await db.douaa.create(request.body);
      if (!row)
        return response.status(409).json({ message: 'Cette douaa existe déjà dans la base de données.' });
      response.status(201).json(row);
    } catch (error) {
      next(error);
    }
  },

  createBulk: async function (request, response, next) {
    try {
      const { items } = request.body;
      const summary = await db.douaa.createBulk(items);
      response.json(summary);
    } catch (error) {
      next(error);
    }
  },
};

export default douaaController;
