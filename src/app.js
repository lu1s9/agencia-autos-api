import express from "express";
import notFound from "./middlewares/notFound.js";

const app = express();

app.use(express.json());

import vehicleRoutes from "./routes/vehicles.routes.js";
import providerRoutes from "./routes/providers.routes.js";

app.use("/vehiculos", vehicleRoutes);
app.use("/proveedores", providerRoutes);

app.use(notFound);

export default app;
