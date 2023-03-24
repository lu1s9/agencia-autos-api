import * as dotenv from "dotenv";
dotenv.config();
import mariadb from "mariadb";

export const pool = mariadb.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
  database: process.env.DB_DATABASE,
  connectTimeout: 5000,
  bigNumberStrings: true,
  supportBigNumbers: true,
});
