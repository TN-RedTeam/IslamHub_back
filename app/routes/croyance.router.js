import express from 'express';
import { z } from 'zod';
import { croyanceController as croyance } from '../controllers/index.controller.js';
import { validateId, validateQuery, validateBody } from '../middlewares/index.middleware.js';

const router = express.Router();

const croyanceSchema = z.object({
  sujet:         z.string().trim().min(1).max(500),
  texte_arabe:   z.string().trim().min(1),
  texte_francais: z.string().trim().max(5000).optional().nullable(),
  'phonétique':  z.string().trim().max(2000).optional().nullable(),
  explication:   z.string().trim().max(10000).optional().nullable(),
  tag:           z.string().trim().max(500).default(''),
});

router.get('/croyances',       validateQuery,                                                    croyance.getAll);
router.get('/croyance/:id',    validateId,                                                       croyance.get);
router.post('/croyances',      validateBody(croyanceSchema),                                     croyance.create);
router.post('/croyances/bulk', validateBody(z.object({ items: croyanceSchema.array().min(1).max(500) })), croyance.createBulk);

export default router;
