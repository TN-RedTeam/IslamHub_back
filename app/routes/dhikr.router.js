import express from "express";

import {dhikrController as dhikr} from "../controllers/index.controller.js";

const router = express.Router();


router.get("/api/dhikr/:id", dhikr.get);
router.get("/api/dhikrs", dhikr.getAll);



export default router;