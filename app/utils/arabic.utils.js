import { createHash } from 'crypto';

/**
 * Normalise le texte avant de calculer le hash de déduplication.
 * Les harakat sont préservés (ils font partie du contenu).
 * Seuls les espaces multiples sont normalisés.
 */
export function normalizeArabic(text) {
  if (!text || typeof text !== 'string') return '';
  return text.replace(/\s+/g, ' ').trim();
}

export function hashArabic(text) {
  return createHash('md5').update(normalizeArabic(text)).digest('hex');
}
