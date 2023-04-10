const errorHandler = (err, req, res, next) => {
  const statusCode = res.statusCode !== 200 ? res.statusCode : 500;
  res.status(statusCode);

  if (err.errno === 1451) {
   return res.json({message: "Comprueba que este recurso no tenga elementos asociados."}) 
  }

  return res.json({
    message: err.message,
    stack: process.env.NODE_ENV === "production" ? "❌" : err.stack,
  });
};

export default errorHandler;
