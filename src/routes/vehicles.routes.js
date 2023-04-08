import { Router } from "express";
import tryCatch from "../utils/tryCatch.js";
import validation from "../middlewares/validationMiddleware.js";
import vehicleSchema from "../validators/vehicleSchema.js";
import {
  getVehicles,
  getVehicle,
  createVehicle,
  updateVehicle,
  deleteVehicle,
} from "../controllers/vehicles.controller.js";

const router = Router();

router.get("/", tryCatch(getVehicles));
router.get("/:id", tryCatch(getVehicle));
router.post("/", validation(vehicleSchema), tryCatch(createVehicle));
router.put("/:id", validation(vehicleSchema), tryCatch(updateVehicle));
router.delete("/:id", tryCatch(deleteVehicle));

export default router;
