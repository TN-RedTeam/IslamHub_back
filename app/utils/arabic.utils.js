import { createHash } from 'crypto';

// Harakat (diacritiques arabes) : U+064B–U+065F + superscript alef U+0670
const DIACRITICS_RE = /[ً-ٰٟ]/g;

export function normalizeArabic(text) {
  if (!text || typeof text !== 'string') return '';
  return text
    .replace(DIACRITICS_RE, '')
    .replace(/\s+/g, ' ')
    .trim();
}

export function hashArabic(text) {
  return createHash('md5').update(normalizeArabic(text)).digest('hex');
}
