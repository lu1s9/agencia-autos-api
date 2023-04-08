import { pool } from "../config/db.js";

export const getVehicles = async (req, res) => {
  // const result = await pool.query("SELECT * FROM Vehiculos");
  const result = await pool.query(
    "SELECT v.id_vehiculo, v.nombre as vehiculoNombre, v.id_proveedor, p.nombre as proveedorNombre, v.anio, v.tipo_combustible, v.num_puertas, v.color, v.precio, v.tipo, v.imagen FROM Vehiculos v INNER JOIN Proveedores p ON v.id_proveedor = p.id_proveedor"
  );
  if (result.length <= 0) throw new Error("No hay ningun vehiculo");
  return res.json(result);
};

export const getVehicle = async (req, res) => {
  const result = await pool.query(
    // "SELECT * FROM Vehiculos WHERE id_vehiculo=?",
    "SELECT v.id_vehiculo, v.nombre as vehiculoNombre, v.id_proveedor, p.nombre as proveedorNombre, v.anio, v.tipo_combustible, v.num_puertas, v.color, v.precio, v.tipo, v.imagen FROM Vehiculos v INNER JOIN Proveedores p ON v.id_proveedor = p.id_proveedor WHERE id_vehiculo=?",
    [req.params.id]
  );
  if (result.length <= 0) throw new Error("Vehiculo no encontrado");
  return res.json(result[0]);
};

export const createVehicle = async (req, res) => {
  const {
    nombre,
    id_proveedor,
    anio,
    tipo_combustible,
    num_puertas,
    color,
    precio,
    tipo,
    imagen,
  } = req.body;
  const result = await pool.query(
    "INSERT INTO Vehiculos(nombre, id_proveedor, anio, tipo_combustible, num_puertas, color, precio, tipo, imagen) value(?,?,?,?,?,?,?,?,?)",
    [
      nombre,
      id_proveedor,
      anio,
      tipo_combustible,
      num_puertas,
      color,
      precio,
      tipo,
      imagen,
    ]
  );
  return res.json({
    id_vehiculo: result.insertId,
    nombre,
    id_proveedor,
    anio,
    tipo_combustible,
    num_puertas,
    color,
    precio,
    tipo,
    imagen,
  });
};

export const updateVehicle = async (req, res) => {
  const { id } = req.params;
  const {
    nombre,
    id_proveedor,
    anio,
    tipo_combustible,
    num_puertas,
    color,
    precio,
    tipo,
    imagen,
  } = req.body;
  const result = await pool.query(
    "UPDATE Vehiculos SET nombre=? ,id_proveedor=?, anio=?, tipo_combustible=?, num_puertas=?, color=?, precio=?, tipo=?, imagen=? WHERE id_vehiculo=?",
    [
      nombre,
      id_proveedor,
      anio,
      tipo_combustible,
      num_puertas,
      color,
      precio,
      tipo,
      imagen,
      id,
    ]
  );
  if (result.affectedRows === 0) throw new Error("Vehiculo no encontrado");
  const vehiculo = await pool.query(
    "SELECT * FROM Vehiculos WHERE id_vehiculo =?",
    [id]
  );
  res.json(vehiculo[0]);
};

export const deleteVehicle = async (req, res) => {
  const result = await pool.query("DELETE FROM Vehiculos WHERE id_vehiculo=?", [
    req.params.id,
  ]);
  if (result.affectedRows <= 0) throw new Error("Vehiculo no encontrado");
  return res.sendStatus(204);
};
