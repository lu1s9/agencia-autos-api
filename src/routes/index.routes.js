import { Router } from "express";
import vehicleRoutes from "../routes/vehicles.routes.js";
import providerRoutes from "../routes/providers.routes.js";

const router = Router();

router.use("/vehiculos", vehicleRoutes);
router.use("/proveedores", providerRoutes);

export default router;
