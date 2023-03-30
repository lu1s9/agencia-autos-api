import { pool } from "../config/db.js";
import { providerSchema } from "../validators/providerSchema.js";

export const getProviders = async (req, res) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const result = await conn.query("SELECT * FROM Proveedores");
    res.json(result);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};

export const getProvider = async (req, res) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const result = await conn.query(
      "SELECT * FROM Proveedores WHERE id_proveedor=?",
      [req.params.id]
    );
    if (result.length <= 0) {
      return res.status(400).json({ message: "Proveedor no encontrado" });
    }
    res.json(result[0]);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};

export const createProvider = async (req, res) => {
  const { error, value } = providerSchema.validate(req.body);
  if (error) {
    return res.json(error.details);
  }
  let conn;
  try {
    const { nombre } = value;
    conn = await pool.getConnection();
    const result = await conn.query(
      "INSERT INTO Proveedores(nombre) value(?)",
      [nombre]
    );
    res.json({ id_provider: result.insertId, nombre });
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};

export const updateProvider = async (req, res) => {
  const { error, value } = providerSchema.validate(req.body);
  if (error) {
    return res.json(error.details);
  }
  let conn;
  try {
    const { id } = req.params;
    const { nombre } = value;
    conn = await pool.getConnection();
    const result = await conn.query(
      "UPDATE Proveedores SET nombre=? WHERE id_proveedor=?",
      [nombre, id]
    );
    if (result.affectedRows === 0) {
      return res.status(400).json({ message: "Proveedor no encontrado" });
    }
    const proveedor = await conn.query(
      "SELECT * FROM Proveedores WHERE id_proveedor =? ",
      [id]
    );
    res.json(proveedor[0]);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};

export const deleteProvider = async (req, res) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const result = await conn.query(
      "DELETE FROM Proveedores WHERE id_proveedor=?",
      [req.params.id]
    );
    if (result.affectedRows <= 0) {
      return res.status(400).json({ message: "Proveedor no encontrado" });
    }
    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({ message: "Algo ha ido mal" });
  } finally {
    if (conn) conn.release();
  }
};