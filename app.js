import express from "express";
import cors from "cors";
import helmet from "helmet";
import rateLimit from "express-rate-limit";
import router from "./app/routes/index.router.js";
import { errorsHandler } from "./app/middlewares/index.middleware.js";
import logger from "morgan";
import fs from "fs";
import error404 from "./app/middlewares/error.404.js";

const app = express();

app.use(helmet());

const allowedOrigins = process.env.ALLOWED_ORIGINS
  ? process.env.ALLOWED_ORIGINS.split(',')
  : ['http://localhost:5173', 'http://localhost:3000'];

app.use(cors({
  origin: allowedOrigins,
  credentials: true,
}));

const limiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 100,
  standardHeaders: true,
  legacyHeaders: false,
  message: { error: 'Too many requests, please try again later.' },
});

app.use(limiter);
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

app.use(logger("dev"));
app.use(
  logger("common", {
    stream: fs.createWriteStream("./logs/access.log", { flags: "a" }),
  })
);

app.use(router);
app.use(errorsHandler);
app.all("*", error404);

export default app;
