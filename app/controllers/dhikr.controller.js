import db from '../models/index.datamapper.js';
import { Error404 } from '../utils/errors/index.utils.js';

const dhikrController = {
  getAll: async function (request, response, next) {
    try {
      const dhikrs = await db.dhikr.getAll();
      if (!dhikrs) return next(new Error404('No dhikr found'));
      const page     = Number(request.query.page     ?? 0);
      const pageSize = Number(request.query.pageSize ?? dhikrs.length);
      response.json({ data: dhikrs, total: dhikrs.length, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting all dhikrs';
      return next(error);
    }
  },

  get: async function (request, response, next) {
    const { id } = request.params;
    try {
      const dhikr = await db.dhikr.get(id);
      if (!dhikr) return next(new Error404('Dhikr not found'));
      response.json(dhikr);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting dhikr';
      return next(error);
    }
  },

  create: async function (request, response, next) {
    try {
      const row = await db.dhikr.create(request.body);
      if (!row)
        return response.status(409).json({ message: 'Ce dhikr existe déjà dans la base de données.' });
      response.status(201).json(row);
    } catch (error) {
      next(error);
    }
  },

  createBulk: async function (request, response, next) {
    try {
      const { items } = request.body;
      const summary = await db.dhikr.createBulk(items);
      response.json(summary);
    } catch (error) {
      next(error);
    }
  },
};

export default dhikrController;
