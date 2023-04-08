const validation = (schema) => async (req, res, next) => {
  try {
    const { error } = await schema.validateAsync(req.body);
    if (error) throw error;
    return next();
  } catch (error) {
    return next(error);
  }
};

export default validation;
