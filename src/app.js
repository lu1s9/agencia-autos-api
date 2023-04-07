import express from "express";
import notFound from "./middlewares/notFound.js";
import errorHandler from "./middlewares/errorHandler.js";

const app = express();

app.use(express.json());

import vehicleRoutes from "./routes/vehicles.routes.js";
import providerRoutes from "./routes/providers.routes.js";

app.use("/vehiculos", vehicleRoutes);
app.use("/proveedores", providerRoutes);

app.use(notFound);
app.use(errorHandler);

export default app;
