import express from "express";
import { hadithController as hadith } from "../controllers/index.controller.js";
import { validateId } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/hadith/:id", validateId, hadith.get);
router.get("/hadiths", hadith.getAll);

export default router;
