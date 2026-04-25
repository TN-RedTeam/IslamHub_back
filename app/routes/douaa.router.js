import express from 'express';
import { z } from 'zod';
import { douaaController as douaa } from '../controllers/index.controller.js';
import { validateId, validateQuery, validateBody } from '../middlewares/index.middleware.js';

const router = express.Router();

const douaaSchema = z.object({
  sujet:         z.string().trim().min(1).max(500),
  texte_arabe:   z.string().trim().min(1),
  texte_francais: z.string().trim().max(5000).optional().nullable(),
  'phonétique':  z.string().trim().max(2000).optional().nullable(),
  explication:   z.string().trim().max(10000).optional().nullable(),
  tag:           z.string().trim().max(500).default(''),
  commentaire:   z.string().trim().max(2000).optional().nullable(),
});

router.get('/douaas',         validateQuery,                                                 douaa.getAll);
router.get('/douaa/:id',      validateId,                                                    douaa.get);
router.post('/douaas',        validateBody(douaaSchema),                                    douaa.create);
router.post('/douaas/bulk',   validateBody(z.object({ items: douaaSchema.array().min(1).max(500) })), douaa.createBulk);

export default router;
