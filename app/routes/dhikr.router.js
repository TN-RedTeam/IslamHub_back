import express from "express";
import { dhikrController as dhikr } from "../controllers/index.controller.js";
import { validateId, validateQuery } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/dhikrs", validateQuery, dhikr.getAll);
router.get("/dhikr/:id", validateId, dhikr.get);

export default router;
