import db from '../models/index.datamapper.js';
import { Error404 } from '../utils/errors/index.utils.js';

// Contrôleur pour la table `parole` (citations de savants, route /savants)
const paroleController = {
  getAll: async function (request, response, next) {
    try {
      const paroles = await db.parole.getAll();
      if (!paroles) return next(new Error404('No citation found'));
      const page     = Number(request.query.page     ?? 0);
      const pageSize = Number(request.query.pageSize ?? paroles.length);
      response.json({ data: paroles, total: paroles.length, page, pageSize });
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting all citations';
      return next(error);
    }
  },

  get: async function (request, response, next) {
    const { id } = request.params;
    try {
      const parole = await db.parole.get(id);
      if (!parole) return next(new Error404('Citation not found'));
      response.json(parole);
    } catch (error) {
      error.type = 'database'; error.method = request.method;
      error.message = 'Error in getting citation';
      return next(error);
    }
  },

  create: async function (request, response, next) {
    try {
      const row = await db.parole.create(request.body);
      if (!row)
        return response.status(409).json({ message: 'Cette citation existe déjà dans la base de données.' });
      response.status(201).json(row);
    } catch (error) { next(error); }
  },

  createBulk: async function (request, response, next) {
    try {
      const summary = await db.parole.createBulk(request.body.items);
      response.json(summary);
    } catch (error) { next(error); }
  },
};

export default paroleController;
