import { z } from 'zod';

const querySchema = z.object({
  page:     z.coerce.number().int().min(0).max(10000).optional().default(0),
  pageSize: z.coerce.number().int().min(1).max(100).optional().default(50),
  q:        z.string().trim().max(200).optional(),
  tag:      z.string().trim().max(100).optional(),
}).strict();

export function validateQuery(req, res, next) {
  const result = querySchema.safeParse(req.query);
  if (!result.success) {
    return res.status(400).json({
      message: 'Invalid query parameters',
      errors: result.error.flatten().fieldErrors,
    });
  }
  req.query = result.data;
  next();
}
