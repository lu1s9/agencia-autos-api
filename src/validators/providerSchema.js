import Joi from "joi";

const providerSchema = Joi.object({
  nombre: Joi.string().trim().min(3).max(30).required(),
});

export default providerSchema;
