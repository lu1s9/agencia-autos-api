import express from "express";
import notFound from "./middlewares/notFound.js";
import errorHandler from "./middlewares/errorHandler.js";
import routes from "./routes/index.routes.js";

const app = express();

app.use(express.json());
app.use("/", routes);

app.use(notFound);
app.use(errorHandler);

export default app;
