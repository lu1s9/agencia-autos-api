import Joi from "joi";

export const vehicleSchema = Joi.object({
  nombre: Joi.string().min(3).max(30).required(),
  id_proveedor: Joi.number().integer().positive().required(),
  anio: Joi.number().integer().positive().required(),
  tipo_combustible: Joi.string().min(5).max(25).required(),
  num_puertas: Joi.string().min(1).max(1).required(),
  color: Joi.string().min(3).max(20).required(),
  precio: Joi.number().positive().required(),
  tipo: Joi.string().min(5).max(20).required(),
  imagen: Joi.string().min(10).max(255).required(),
});
