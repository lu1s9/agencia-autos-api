const notFound = (req, res, next) => {
  res.status(404);
  const error = new Error(`Ruta ${req.originalUrl} no encontrada`);
  next(error);
};

export default notFound;
