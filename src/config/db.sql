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

-- Initial records
INSERT INTO Proveedores (nombre) VALUES ('Volkswagen'), ('Toyota'), ('Mercedes-Benz'), ('Ford'),('BMW'), ('Honda'), ('Hyundai'), ('Nissan'), ('Kia'), ('Renault'),
('Tesla'), ('Volvo'), ('Suzuki');

INSERT INTO Vehiculos (nombre, id_proveedor, anio, tipo_combustible, num_puertas, color, precio, tipo, imagen) VALUES
('Tiguan', 1, 2010, "diesel", 5, "rojo", 574990, "camioneta", "https://imagenes/tiguan.jpg"),
('Lavida', 1, 2022, "gasolina", 2, "verde", 244000, "automovil", "https://imagenes/lavida.jpg"),
('Passat', 1, 2017, "electrico", 4, "azul", 132000, "minivan", "https://imagenes/passat.jpg"),
('Camry', 2, 2011, "diesel", 5, "rojo", 418000, "camioneta", "https://imagenes/camry.jpg"),
('Corolla', 2, 2023, "gasolina", 2, "verde", 123000, "automovil", "https://imagenes/corolla.jpg"),
('Clase C Cabrio', 3, 2012, "electrico", 4, "azul", 542000, "minivan", "https://imagenes/clase-c-cabrio.jpg"),
('Fiesta', 4, 2000, "diesel", 5, "rojo", 222000, "camioneta", "https://imagenes/fiesta.jpg"),
('m2', 5, 2012, "gasolina", 2, "verde", 777000, "automovil", "https://imagenes/m2.jpg"),
('i8', 5, 2012, "gasolina", 2, "verde", 888000, "automovil", "https://imagenes/i8.jpg"),
('Civic', 6, 2007, "electrico", 4, "azul", 333000, "minivan", "https://imagenes/civic.jpg"),
('Tucson', 7, 2014, "diesel", 5, "rojo", 275000, "camioneta", "https://imagenes/tucson.jpg"),
('Micra', 8, 2015, "gasolina", 2, "verde", 305000, "automovil", "https://imagenes/micra.jpg"),
('Rio', 9, 2016, "electrico", 4, "azul", 410000, "minivan", "https://imagenes/rio.jpg"),
('Clio', 10, 2009, "diesel", 5, "rojo", 300000, "camioneta", "https://imagenes/clio.jpg"),
('Model S', 11, 2012, "gasolina", 2, "verde", 1110000, "automovil", "https://imagenes/model-s.jpg"),
('Model 3', 11, 2017, "electrico", 4, "azul", 900000, "minivan", "https://imagenes/model-3.jpg"),
('V40', 12, 2016, "diesel", 5, "rojo", 190000, "camioneta", "https://imagenes/v40.jpg"),
('XC60', 12, 2022, "gasolina", 2, "verde", 112000, "automovil", "https://imagenes/xc60.jpg");