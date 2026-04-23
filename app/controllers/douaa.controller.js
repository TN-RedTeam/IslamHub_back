import db from "../models/index.datamapper.js";
import { Error404 } from "../utils/errors/index.utils.js";

const douaaController = {
    getAll: async function (request, response, next) {
        try {
            const douaas = await db.douaa.getAll();
            if (!douaas)
                return next(new Error404('No douaa found'));
            response.json(douaas);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in getting all douaas";
            return next(error);
        }
    },
    get: async function (request, response, next) {
        const { id } = request.params;
        try {
            const douaa = await db.douaa.get(id);
            if (!douaa)
                return next(new Error404('Douaa not found'));
            response.json(douaa);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in getting douaa";
            return next(error);
        }
    },
    /*create: async function (request, response, next) {
        const { name } = request.body;
        try {
            const createdDouaa = await db.douaa.create(douaa);
            response.status(201).json(createdDouaa);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in creating douaa";
            return next(error);
        }
    },
    update: async function (request, response, next) {
        const { id } = request.params;
        const { name } = request.body;
        try {
            const updatedDouaa = await db.douaa.update(id, douaa);
            response.json(updatedDouaa);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in updating douaa";
            return next(error);
        }
     */
};

export default douaaController;
