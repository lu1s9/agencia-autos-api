import { Router } from "express";
import {
  getProvider,
  getProviders,
  createProvider,
  updateProvider,
  deleteProvider,
} from "../controllers/providers.controller.js";

const router = Router();

router.get("/", getProviders);
router.get("/:id", getProvider);
router.post("/", createProvider);
router.put("/:id", updateProvider);
router.delete("/:id", deleteProvider);

export default router;
