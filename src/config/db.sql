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
('Tiguan', 1, 2010, "diesel", 5, "rojo", 574990, "camioneta", "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
('Lavida', 1, 2022, "gasolina", 2, "verde", 244000, "automovil", "https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
('Passat', 1, 2017, "electrico", 4, "azul", 132000, "minivan", "https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80"),
('Camry', 2, 2011, "diesel", 5, "rojo", 418000, "camioneta", "https://images.unsplash.com/photo-1489824904134-891ab64532f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80"),
('Corolla', 2, 2023, "gasolina", 2, "verde", 123000, "automovil", "https://images.unsplash.com/photo-1494905998402-395d579af36f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
('Clase C Cabrio', 3, 2012, "electrico", 4, "azul", 542000, "minivan", "https://images.unsplash.com/photo-1550355291-bbee04a92027?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Fiesta', 4, 2000, "diesel", 5, "rojo", 222000, "camioneta", "https://images.unsplash.com/photo-1580273916550-e323be2ae537?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('m2', 5, 2012, "gasolina", 2, "verde", 777000, "automovil", "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('i8', 5, 2012, "gasolina", 2, "verde", 888000, "automovil", "https://images.unsplash.com/photo-1549399542-7e3f8b79c341?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Civic', 6, 2007, "electrico", 4, "azul", 333000, "minivan", "https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Tucson', 7, 2014, "diesel", 5, "rojo", 275000, "camioneta", "https://images.unsplash.com/photo-1507136566006-cfc505b114fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Micra', 8, 2015, "gasolina", 2, "verde", 305000, "automovil", "https://images.unsplash.com/photo-1590362891991-f776e747a588?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Rio', 9, 2016, "electrico", 4, "azul", 410000, "minivan", "https://images.unsplash.com/photo-1504215680853-026ed2a45def?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Clio', 10, 2009, "diesel", 5, "rojo", 300000, "camioneta", "https://images.unsplash.com/photo-1549927681-0b673b8243ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Model S', 11, 2012, "gasolina", 2, "verde", 1110000, "automovil", "https://images.unsplash.com/photo-1537984822441-cff330075342?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('Model 3', 11, 2017, "electrico", 4, "azul", 900000, "minivan", "https://images.unsplash.com/photo-1532974297617-c0f05fe48bff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTF8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('V40', 12, 2016, "diesel", 5, "rojo", 190000, "camioneta", "https://images.unsplash.com/photo-1546614042-7df3c24c9e5d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
('XC60', 12, 2022, "gasolina", 2, "verde", 112000, "automovil", "https://images.unsplash.com/photo-1520050206274-a1ae44613e6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTh8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60");
