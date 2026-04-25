import { z } from 'zod';

/**
 * Factory : retourne un middleware Express qui valide req.body
 * avec le schéma Zod fourni.
 */
export function validateBody(schema) {
  return (req, res, next) => {
    const result = schema.safeParse(req.body);
    if (!result.success) {
      return res.status(400).json({
        message: 'Corps de la requête invalide.',
        errors: result.error.errors.map(e => ({
          path: e.path.join('.'),
          message: e.message,
        })),
      });
    }
    req.body = result.data;
    next();
  };
}
