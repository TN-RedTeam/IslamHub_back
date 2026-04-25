import express from 'express';
import { z } from 'zod';
import { hadithController as hadith } from '../controllers/index.controller.js';
import { validateId, validateQuery, validateBody } from '../middlewares/index.middleware.js';

const router = express.Router();

const hadithSchema = z.object({
  sujet:          z.string().trim().min(1).max(500),
  texte_arabe:    z.string().trim().min(1),
  texte_francais: z.string().trim().max(5000).optional().nullable(),
  'phonétique':   z.string().trim().max(2000).optional().nullable(),
  explication:    z.string().trim().max(10000).optional().nullable(),
  tag:            z.string().trim().max(500).default(''),
  rapporteur:     z.string().trim().max(200).optional().nullable(),
  narrateur:      z.string().trim().max(200).optional().nullable(),
  statut:         z.string().trim().max(100).optional().nullable(),
});

router.get('/hadiths/search', validateQuery,                                                                 hadith.search);
router.get('/hadiths/tags',                                                                                  hadith.getTags);
router.get('/hadiths',        validateQuery,                                                                 hadith.getAll);
router.get('/hadith/:id',     validateId,                                                                    hadith.get);
router.post('/hadiths',       validateBody(hadithSchema),                                                    hadith.create);
router.post('/hadiths/bulk',  validateBody(z.object({ items: hadithSchema.array().min(1).max(500) })),       hadith.createBulk);

export default router;
