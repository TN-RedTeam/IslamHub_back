import express from "express";
import { croyanceController as croyance } from "../controllers/index.controller.js";
import { validateId, validateQuery } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/croyances", validateQuery, croyance.getAll);
router.get("/croyance/:id", validateId, croyance.get);

export default router;
