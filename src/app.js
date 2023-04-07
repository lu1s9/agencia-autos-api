import express from "express";
import helmet from "helmet";
import notFound from "./middlewares/notFound.js";
import errorHandler from "./middlewares/errorHandler.js";
import routes from "./routes/index.routes.js";

const app = express();

app.use(express.json());
app.use(helmet());
app.use("/", routes);

app.use(notFound);
app.use(errorHandler);

export default app;
