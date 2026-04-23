import express from "express";
import { douaaController as douaa } from "../controllers/index.controller.js";
import { validateId } from "../middlewares/index.middleware.js";

const router = express.Router();

router.get("/douaa/:id", validateId, douaa.get);
router.get("/douaas", douaa.getAll);

export default router;
