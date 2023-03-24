CREATE DATABASE IF NOT EXISTS agencia_autos;

USE agencia_autos;

CREATE TABLE Proveedores(
  id_proveedor int NOT NULL AUTO_INCREMENT,
  nombre varchar(30) NOT NULL,
  PRIMARY KEY(id_proveedor)
);

CREATE TABLE Vehiculos(
  id_vehiculo int NOT NULL AUTO_INCREMENT,
  nombre varchar(40) NOT NULL,
  id_proveedor int NOT NULL,
  anio int(4) NOT NULL,
  tipo_combustible varchar(25) NOT NULL,
  num_puertas char(1) NOT NULL,
  color varchar(30) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  tipo varchar(20) NOT NULL,
  imagen varchar(255) NOT NULL,
  PRIMARY KEY(id_vehiculo),
  FOREIGN KEY(id_proveedor) REFERENCES Proveedores(id_proveedor)
);