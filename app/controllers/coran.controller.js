import db from '../models/index.datamapper.js';
import { Error404 } from '../utils/errors/index.utils.js';

const coranController = {
  getAll: async function (request, response, next) {
    try {
      const versets = await db.coran.getAll();
      if (!versets) return next(new Error404('No verset found'));
      const page     = Number(request.query.page     ?? 0);
      const pageSize = Number(request.query.pageSize ?? versets.length);
      response.json({ data: versets, total: versets.length, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting all versets';
      return next(error);
    }
  },

  get: async function (request, response, next) {
    const { id } = request.params;
    try {
      const verset = await db.coran.get(id);
      if (!verset) return next(new Error404('Verset not found'));
      response.json(verset);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting verset';
      return next(error);
    }
  },

  create: async function (request, response, next) {
    try {
      const row = await db.coran.create(request.body);
      if (!row)
        return response.status(409).json({ message: 'Ce verset existe déjà dans la base de données.' });
      response.status(201).json(row);
    } catch (error) { next(error); }
  },

  createBulk: async function (request, response, next) {
    try {
      const summary = await db.coran.createBulk(request.body.items);
      response.json(summary);
    } catch (error) { next(error); }
  },
};

export default coranController;
