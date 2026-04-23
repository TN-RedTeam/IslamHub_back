import { ZodError } from "zod";

const isDev = process.env.NODE_ENV !== 'production';

async function errorsHandler(error, request, response, next) {
    if (error instanceof ZodError)
        return response.status(422).json(error.flatten().fieldErrors);

    if (error.type === "not found") {
        return response.status(error.status || 404).json({ message: error.message });
    }

    if (error.type === "duplicate") {
        return response.status(error.status || 409).json({ message: error.message });
    }

    if (error.type === "nodemailer") {
        return response.json({ message: error.message });
    }

    if (error.type === "database") {
        const body = isDev
            ? { message: error.message, method: error.method, status: error.status, detail: error.detail }
            : { message: 'Database error' };
        return response.status(error.status || 500).json(body);
    }

    response.status(error.status || 500);
    return response.json({ message: isDev ? (error.message || 'Internal server error') : 'Internal server error' });
}

export default errorsHandler;
