import express from 'express';
import { z } from 'zod';
import { paroleController as parole } from '../controllers/index.controller.js';
import { validateId, validateQuery, validateBody } from '../middlewares/index.middleware.js';

const router = express.Router();

// La table DB s'appelle `parole` mais le front appelle /savants
const paroleSchema = z.object({
  sujet:          z.string().trim().min(1).max(500),
  savant:         z.string().trim().min(1).max(300),
  texte_arabe:    z.string().trim().min(1),
  texte_francais: z.string().trim().max(5000).optional().nullable(),
  'phonétique':   z.string().trim().max(2000).optional().nullable(),
  explication:    z.string().trim().max(10000).optional().nullable(),
  tag:            z.string().trim().max(500).default(''),
});

router.get('/savants',        validateQuery,                                                    parole.getAll);
router.get('/savant/:id',     validateId,                                                       parole.get);
router.post('/savants',       validateBody(paroleSchema),                                       parole.create);
router.post('/savants/bulk',  validateBody(z.object({ items: paroleSchema.array().min(1).max(500) })), parole.createBulk);

export default router;
