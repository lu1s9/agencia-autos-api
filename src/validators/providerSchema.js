import Joi from "joi";

export const providerSchema = Joi.object({
  nombre: Joi.string().min(3).max(30).required(),
});
