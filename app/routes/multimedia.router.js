import express from 'express';
import { z } from 'zod';
import { multimediaController as multimedia } from '../controllers/index.controller.js';
import { validateId, validateQuery, validateBody } from '../middlewares/index.middleware.js';

const router = express.Router();

// youtube_id : id de la vidéo YouTube (ex: 'dQw4w9WgXcQ')
// 11 caractères standard, mais on accepte 8-20 par sécurité (anciens IDs / playlists possibles)
const multimediaSchema = z.object({
  youtube_id:     z.string().trim().regex(/^[A-Za-z0-9_-]{8,20}$/, 'Invalid YouTube ID'),
  titre:          z.string().trim().min(1).max(300),
  description:    z.string().trim().max(5000).optional().nullable(),
  categorie:      z.string().trim().max(100).default(''),
  savant:         z.string().trim().max(200).optional().nullable(),
  duree_secondes: z.number().int().positive().optional().nullable(),
});

router.get('/multimedia/search',     validateQuery,                                                              multimedia.search);
router.get('/multimedia/categories',                                                                              multimedia.getCategories);
router.get('/multimedia',            validateQuery,                                                              multimedia.getAll);
router.get('/multimedia/:id',        validateId,                                                                 multimedia.get);
router.post('/multimedia',           validateBody(multimediaSchema),                                             multimedia.create);
router.post('/multimedia/bulk',      validateBody(z.object({ items: multimediaSchema.array().min(1).max(500) })), multimedia.createBulk);
router.delete('/multimedia/:id',     validateId,                                                                 multimedia.delete);

export default router;
