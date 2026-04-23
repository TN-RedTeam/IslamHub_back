import { z } from 'zod';

const idSchema = z.coerce.number().int().positive();

export function validateId(req, res, next) {
    const result = idSchema.safeParse(req.params.id);
    if (!result.success) {
        return res.status(400).json({ message: 'Invalid ID: must be a positive integer' });
    }
    req.params.id = result.data;
    next();
}
