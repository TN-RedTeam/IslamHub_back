import express from "express";
import { croyanceController as croyance } from "../controllers/index.controller.js";
import { validateId } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/croyance/:id", validateId, croyance.get);
router.get("/croyances", croyance.getAll);

export default router;
