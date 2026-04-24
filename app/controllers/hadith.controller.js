import db from "../models/index.datamapper.js";
import { Error404 } from "../utils/errors/index.utils.js";

const hadithController = {
    getAll: async function (request, response, next) {
        try {
            const hadiths = await db.hadith.getAll();
            if (!hadiths)
                return next(new Error404('No hadith found'));
            const page = Number(request.query.page ?? 0);
            const pageSize = Number(request.query.pageSize ?? hadiths.length);
            response.json({
                data: hadiths,
                total: hadiths.length,
                page,
                pageSize,
            });
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in getting all hadiths";
            return next(error);
        }
    },
    get: async function (request, response, next) {
        const { id } = request.params;
        try {
            const hadith = await db.hadith.get(id);
            if (!hadith)
                return next(new Error404('Hadith not found'));
            response.json(hadith);
        } catch (error) {
            error.type = "database";
            error.method = request.method;
            error.message = "Error in getting hadith";
            return next(error);
        }
    },
};

export default hadithController;
