import { pool } from "../config/db.js";

export const getProviders = async (req, res) => {
  const result = await pool.query("SELECT * FROM Proveedores");
  if (result.length <= 0) throw new Error("No hay ningun proveedor");
  return res.json(result);
};

export const getProvider = async (req, res) => {
  const result = await pool.query(
    "SELECT * FROM Proveedores WHERE id_proveedor=?",
    [req.params.id]
  );
  if (result.length <= 0) throw new Error("Proveedor no encontrado");
  return res.json(result[0]);
};

export const createProvider = async (req, res) => {
  const { nombre } = req.body;
  const result = await pool.query("INSERT INTO Proveedores(nombre) value(?)", [
    nombre,
  ]);
  return res.json({ id_provider: result.insertId, nombre });
};

export const updateProvider = async (req, res) => {
  const result = await pool.query(
    "UPDATE Proveedores SET nombre=? WHERE id_proveedor=?",
    [req.body.nombre, req.params.id]
  );
  if (result.affectedRows === 0) throw new Error("Proveedor no encontrado");
  const proveedor = await pool.query(
    "SELECT * FROM Proveedores WHERE id_proveedor =? ",
    [req.params.id]
  );
  return res.json(proveedor[0]);
};

export const deleteProvider = async (req, res) => {
  const result = await pool.query(
    "DELETE FROM Proveedores WHERE id_proveedor=?",
    [req.params.id]
  );
  if (result.affectedRows <= 0) throw new Error("Proveedor no encontrado");
  return res.sendStatus(204);
};

export const getProviderVehicles = async (req, res) => {
  const result = await pool.query(
    "SELECT v.id_vehiculo, v.nombre AS vehiculoNombre, p.id_proveedor, p.nombre AS proveedorNombre FROM Vehiculos v INNER JOIN Proveedores p ON v.id_proveedor= p.id_proveedor WHERE v.id_proveedor=?",
    [req.params.id]
  );
  if (result.length <= 0)
    throw new Error("Este proveedor no contiene vehiculos");
  return res.json(result);
};
