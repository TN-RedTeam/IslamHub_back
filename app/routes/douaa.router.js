import express from "express";
import { douaaController as douaa } from "../controllers/index.controller.js";
import { validateId, validateQuery } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/douaas", validateQuery, douaa.getAll);
router.get("/douaa/:id", validateId, douaa.get);

export default router;
