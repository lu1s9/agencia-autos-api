import { Router } from "express";
import tryCatch from "../utils/tryCatch.js";
import validation from "../middlewares/validationMiddleware.js";
import providerSchema from "../validators/providerSchema.js";
import {
  getProvider,
  getProviders,
  createProvider,
  updateProvider,
  deleteProvider,
  getProviderVehicles,
} from "../controllers/providers.controller.js";

const router = Router();

router.get("/", tryCatch(getProviders));
router.get("/:id", tryCatch(getProvider));
router.post("/", validation(providerSchema), tryCatch(createProvider));
router.put("/:id", validation(providerSchema), tryCatch(updateProvider));
router.delete("/:id", tryCatch(deleteProvider));
router.get("/:id/vehiculos", tryCatch(getProviderVehicles));

export default router;
