import express from 'express';
import hadithRouter      from './hadith.router.js';
import dhikrRouter       from './dhikr.router.js';
import douaaRouter       from './douaa.router.js';
import coranRouter       from './coran.router.js';
import paroleRouter      from './parole.router.js';
import multimediaRouter  from './multimedia.router.js';

// Note : croyanceRouter retiré — la table `croyance` n'existe pas encore.
// À réintégrer quand la table sera créée en BDD.

const router = express.Router();

router.use(hadithRouter);
router.use(dhikrRouter);
router.use(douaaRouter);
router.use(coranRouter);
router.use(paroleRouter);
router.use(multimediaRouter);

export default router;
