import { Router } from "express";
import {
  getVehicles,
  getVehicle,
  createVehicle,
  updateVehicle,
  deleteVehicle,
} from "../controllers/vehicles.controller.js";

const router = Router();

router.get("/", getVehicles);
router.get("/:id", getVehicle);
router.post("/", createVehicle);
router.put("/:id", updateVehicle);
router.delete("/:id", deleteVehicle);

export default router;
