import hadithDatamapper      from './hadith.datamapper.js';
import dhikrDatamapper       from './dhikr.datamapper.js';
import douaaDatamapper       from './douaa.datamapper.js';
import coranDatamapper       from './coran.datamapper.js';
import paroleDatamapper      from './parole.datamapper.js';
import multimediaDatamapper  from './multimedia.datamapper.js';

// Note : la table `croyance` n'existe pas encore en BDD.
// Le datamapper croyance est retiré jusqu'à création de la table.

const db = {
  hadith:      hadithDatamapper,
  dhikr:       dhikrDatamapper,
  douaa:       douaaDatamapper,
  coran:       coranDatamapper,
  parole:      paroleDatamapper,
  multimedia:  multimediaDatamapper,
};

export default db;
