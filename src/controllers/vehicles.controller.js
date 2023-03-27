import { pool } from "../config/db.js";
import { vehicleSchema } from "../validators/vehicleSchema.js";

export const getVehicles = async (req, res) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const result = await conn.query("SELECT * FROM Vehiculos");
    res.json(result);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};

export const getVehicle = async (req, res) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const result = await conn.query(
      "SELECT * FROM Vehiculos WHERE id_vehiculo=?",
      [req.params.id]
    );
    if (result.length <= 0) {
      return res.status(400).json({ message: "Vehiculo no encontrado" });
    }
    res.json(result[0]);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};

export const createVehicle = async (req, res) => {
  const { error, value } = vehicleSchema.validate(req.body);
  if (error) {
    return res.json(error.details);
  }
  let conn;
  try {
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
    } = value;
    conn = await pool.getConnection();
    const result = await conn.query(
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
    res.json({
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
  } catch (error) {
    // return res.status(500).json({ message: "Algo ha ido mal" });
    return res.status(500).json(error);
  } finally {
    if (conn) conn.release();
  }
};

export const updateVehicle = async (req, res) => {
  const { error, value } = vehicleSchema.validate(req.body);
  if (error) {
    return res.json(error.details);
  }
  let conn;
  try {
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
    } = value;
    conn = await pool.getConnection();
    const result = await conn.query(
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
    if (result.affectedRows === 0) {
      return res.status(400).json({ message: "Vehiculo no encontrado" });
    }
    const vehiculo = await conn.query(
      "SELECT * FROM Vehiculos WHERE id_vehiculo =?",
      [id]
    );
    res.json(vehiculo[0]);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};

export const deleteVehicle = async (req, res) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const result = await conn.query(
      "DELETE FROM Vehiculos WHERE id_vehiculo=?",
      [req.params.id]
    );
    if (result.affectedRows <= 0) {
      return res.status(400).json({ message: "Vehiculo no encontrado" });
    }
    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};
