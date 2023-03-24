import express from "express";

const app = express();

app.use(express.json());

import vehicleRoutes from "./routes/vehicles.routes.js";
import providerRoutes from "./routes/providers.routes.js";

app.use("/vehiculos", vehicleRoutes);
app.use("/proveedores", providerRoutes);

app.use((req, res, next) => {
  res.status(404).json({
    message: "Ruta no encontrada",
  });
});

export default app;
