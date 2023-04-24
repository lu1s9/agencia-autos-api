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
('Tiguan', 1, 2010, "diesel", 5, "rojo", 574990, "camioneta", "https://archive.izmostock.com/img-get/I0000i5aCRF9.pXk/s/1000/2017-volkswagen-tiguan-comfortline-4wd-5-door-suv-angular-front.jpg"),
('Lavida', 1, 2022, "gasolina", 2, "verde", 244000, "automovil", "https://www.carscoops.com/wp-content/uploads/2018/04/VW-Lavida-00-1024x555.jpg"),
('Passat', 1, 2017, "electrico", 4, "azul", 132000, "minivan", "https://s3.caradvice.com.au/wp-content/uploads/2015/10/Volkswagen-Passat-30.jpg"),
('Camry', 2, 2011, "diesel", 5, "rojo", 418000, "camioneta", "https://tflcar.com/wp-content/uploads/2017/06/2018-toyota-camry-se-hybrid.jpg"),
('Corolla', 2, 2023, "gasolina", 2, "verde", 123000, "automovil", "http://www.listadecarros.com/wp-content/uploads/2015/02/Toyota-Corolla-2015-4.jpg"),
('Clase C Cabrio', 3, 2012, "electrico", 4, "azul", 542000, "minivan", "https://www.topgear.com/sites/default/files/cars-car/carousel/2018/06/18c0439_011.jpg"),
('Fiesta', 4, 2000, "diesel", 5, "rojo", 222000, "camioneta", "https://www.carscoops.com/wp-content/uploads/2020/10/2021-ford-fiesta-st-edition-3.jpg"),
('m2', 5, 2012, "gasolina", 2, "verde", 777000, "automovil", "https://preview.redd.it/1039vgjk51z21.jpg?auto=webp&s=b43b275d8f65869c5059aa3427a7d26dfa3594a3"),
('i8', 5, 2012, "gasolina", 2, "verde", 888000, "automovil", "https://icdn-1.motor1.com/images/mgl/kLGVe/s1/2017-bmw-i8.jpg"),
('Civic', 6, 2007, "electrico", 4, "azul", 333000, "minivan", "https://st.motortrendenespanol.com/uploads/sites/5/2017/04/2017-Honda-Civic-Hatchback-Sport-front-three-quarter.jpg"),
('Tucson', 7, 2014, "diesel", 5, "rojo", 275000, "camioneta", "https://www.motortrend.com/uploads/sites/5/2017/06/2017-Hyundai-Tucson-Limited-16T-AWD-front-three-quarter-e1504034466735.jpg"),
('Micra', 8, 2015, "gasolina", 2, "verde", 305000, "automovil", "https://i0.wp.com/www.carooza.com/wp-content/uploads/2018/03/nissan-micr.jpg?fit=1920%2C1200&ssl=1"),
('Rio', 9, 2016, "electrico", 4, "azul", 410000, "minivan", "https://i.gaw.to/vehicles/photos/09/33/093321_2019_kia_Rio_Rio5.jpg"),
('Clio', 10, 2009, "diesel", 5, "rojo", 300000, "camioneta", "https://mediacloud.carbuyer.co.uk/image/private/s--Y_L89pjf--/v1579608675/carbuyer/renault-clio-1.jpg"),
('Model S', 11, 2012, "gasolina", 2, "verde", 1110000, "automovil", "https://www.ev-cars.org/wp-content/uploads/2017/04/01-tesla-model-s-coupe-3840x2160.jpg"),
('Model 3', 11, 2017, "electrico", 4, "azul", 900000, "minivan", "https://media.autoexpress.co.uk/image/private/s--w3mCgRM3--/v1565281565/autoexpress/2019/08/dsc_9204.jpg"),
('V40', 12, 2016, "diesel", 5, "rojo", 190000, "camioneta", "https://www.autocar.co.uk/sites/autocar.co.uk/files/volvo-v40-6.jpg"),
('XC60', 12, 2022, "gasolina", 2, "verde", 112000, "automovil", "https://www.cararticles.co.uk/wp-content/uploads/2018/01/Volvo-XC60-T8.jpg");
