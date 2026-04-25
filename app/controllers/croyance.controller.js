import db from '../models/index.datamapper.js';
import { Error404 } from '../utils/errors/index.utils.js';

const croyanceController = {
  getAll: async function (request, response, next) {
    try {
      const croyances = await db.croyance.getAll();
      if (!croyances) return next(new Error404('No croyance found'));
      const page     = Number(request.query.page     ?? 0);
      const pageSize = Number(request.query.pageSize ?? croyances.length);
      response.json({ data: croyances, total: croyances.length, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting all croyances';
      return next(error);
    }
  },

  get: async function (request, response, next) {
    const { id } = request.params;
    try {
      const croyance = await db.croyance.get(id);
      if (!croyance) return next(new Error404('Croyance not found'));
      response.json(croyance);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting croyance';
      return next(error);
    }
  },

  create: async function (request, response, next) {
    try {
      const row = await db.croyance.create(request.body);
      if (!row)
        return response.status(409).json({ message: 'Cette croyance existe déjà dans la base de données.' });
      response.status(201).json(row);
    } catch (error) {
      next(error);
    }
  },

  createBulk: async function (request, response, next) {
    try {
      const { items } = request.body;
      const summary = await db.croyance.createBulk(items);
      response.json(summary);
    } catch (error) {
      next(error);
    }
  },
};

export default croyanceController;
