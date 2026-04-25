import express from 'express';
import { z } from 'zod';
import { dhikrController as dhikr } from '../controllers/index.controller.js';
import { validateId, validateQuery, validateBody } from '../middlewares/index.middleware.js';

const router = express.Router();

const dhikrSchema = z.object({
  sujet:         z.string().trim().min(1).max(500),
  texte_arabe:   z.string().trim().min(1),
  texte_francais: z.string().trim().max(5000).optional().nullable(),
  'phonétique':  z.string().trim().max(2000).optional().nullable(),
  explication:   z.string().trim().max(10000).optional().nullable(),
  tag:           z.string().trim().max(500).default(''),
  commentaire:   z.string().trim().max(2000).optional().nullable(),
});

router.get('/dhikrs',         validateQuery,                                                 dhikr.getAll);
router.get('/dhikr/:id',      validateId,                                                    dhikr.get);
router.post('/dhikrs',        validateBody(dhikrSchema),                                    dhikr.create);
router.post('/dhikrs/bulk',   validateBody(z.object({ items: dhikrSchema.array().min(1).max(500) })), dhikr.createBulk);

export default router;
