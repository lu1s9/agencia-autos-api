# Una simple Api Rest de Vehículos

Proyecto en el que se implementa una API REST usando Node.js y MariaDB dentro de
contenedores Docker.

## Instalación

Requiere de tener Docker instalado.

1. Clonar este repositorio e ingresar al directorio

```shell
git clone https://github.com/lu1s9/agencia-autos-api.git
cd agencia-autos-api
```

2. Usar Docker Compose
   > Recuerda estar en el directorio del proyecto al ejecutar los siguientes comandos.
   - Crear e iniciar contenedores
   ```shell
   docker compose up -d
   ```
   - Comprobar que los contenedores se hayan iniciado correctamente
   ```shell
   docker ps
   ```
   - Detener y remover contenedores al finalizar el uso
   ```shell
   docker compose down
   ```

## Modo de uso

Usar un cliente REST como Postman para realizar las peticiones correspondientes.

**Rutas Disponibles**

| Método | Endpoint                      | Descripción                   |
| ------ | ----------------------------- | ----------------------------- |
| GET    | localhost:3001/proveedores    | Listar todos los proveedores  |
| GET    | localhost:3001/proveedores/id | Listar un proveedor por id    |
| POST   | localhost:3001/proveedores    | Crear un proveedor            |
| PUT    | localhost:3001/proveedores/id | Modificar un proveedor por id |
| DELETE | localhost:3001/proveedores/id | Eliminar un proveedor por id  |
| GET    | localhost:3001/vehiculos      | Listar todos los vehículos    |
| GET    | localhost:3001/vehiculos/id   | Listar un vehículo por id     |
| POST   | localhost:3001/vehiculos      | Crear un vehículo             |
| PUT    | localhost:3001/vehiculos/id   | Modificar un vehículo por id  |
| DELETE | localhost:3001/vehiculos/id   | Eliminar un vehículo por id   |

### Ejemplos

- Cuerpo en formato JSON para crear o modificar un proveedor.

```json
{
  "nombre": "Nissan"
}
```

- Cuerpo en formato JSON para crear o modificar un vehículo.

```json
{
  "nombre": "Tsuru",
  "id_proveedor": 1,
  "anio": 2005,
  "tipo_combustible": "gasolina",
  "num_puertas": "4",
  "color": "azul",
  "precio": 123456,
  "tipo": "automovil",
  "imagen": "https://sitio.com/imagen.jpg"
}
```
