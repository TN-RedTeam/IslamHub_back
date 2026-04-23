import express from "express";
import { hadithController as hadith } from "../controllers/index.controller.js";
import { validateId, validateQuery } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/hadiths", validateQuery, hadith.getAll);
router.get("/hadith/:id", validateId, hadith.get);

export default router;
