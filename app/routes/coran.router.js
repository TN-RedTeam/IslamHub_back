import express from 'express';
import { z } from 'zod';
import { coranController as coran } from '../controllers/index.controller.js';
import { validateId, validateQuery, validateBody } from '../middlewares/index.middleware.js';

const router = express.Router();

const coranSchema = z.object({
  sujet:          z.string().trim().min(1).max(500),
  sourate:        z.string().trim().max(200).optional().nullable(),
  texte_arabe:    z.string().trim().min(1),
  texte_francais: z.string().trim().max(5000).optional().nullable(),
  'phonétique':   z.string().trim().max(2000).optional().nullable(),
  explication:    z.string().trim().max(10000).optional().nullable(),
  tag:            z.string().trim().max(500).default(''),
});

router.get('/coran',       validateQuery,                                                   coran.getAll);
router.get('/coran/:id',   validateId,                                                     coran.get);
router.post('/coran',      validateBody(coranSchema),                                      coran.create);
router.post('/coran/bulk', validateBody(z.object({ items: coranSchema.array().min(1).max(500) })), coran.createBulk);

export default router;
