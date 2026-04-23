import express from "express";
import { dhikrController as dhikr } from "../controllers/index.controller.js";
import { validateId } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/dhikr/:id", validateId, dhikr.get);
router.get("/dhikrs", dhikr.getAll);

export default router;
