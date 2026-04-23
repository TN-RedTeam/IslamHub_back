import db from "../models/index.datamapper.js";
import { Error404 } from "../utils/errors/index.utils.js";

const croyanceController = {
    getAll: async function (request, response, next) {
        try {
            const croyances = await db.croyance.getAll();
            if (!croyances)
                return next(new Error404('No croyance found'));
            response.json(croyances);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in getting all croyances";
            return next(error);
        }
    },
    get: async function (request, response, next) {
        const { id } = request.params;
        try {
            const croyance = await db.croyance.get(id);
            if (!croyance)
                return next(new Error404('Croyance not found'));
            response.json(croyance);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in getting croyance";
            return next(error);
        }
    },
    /*create: async function (request, response, next) {
        const { name } = request.body;
        try {
            const createdCroyance = await db.croyance.create(croyance);
            response.status(201).json(createdCroyance);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in creating croyance";
            return next(error);
        }
    },
    update: async function (request, response, next) {
        const { id } = request.params;
        const { name } = request.body;
        try {
            const updatedCroyance = await db.croyance.update(id, croyance);
            response.json(updatedCroyance);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in updating croyance";
            return next(error);
        }
     */
};

export default croyanceController;
