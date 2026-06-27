/*
Clase 07 — Crear la primera tabla

EJECUTA ESTE ARCHIVO conectado a:
- base de datos: curso_postgresql
- schema: public
*/

-- Si estás repitiendo el ejercicio y deseas reiniciar SOLO esta tabla:
-- DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id_cliente INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(30),
    fecha_registro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    activo BOOLEAN NOT NULL DEFAULT TRUE
);

-- Verificar que la tabla fue creada.
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name = 'clientes';

-- Consultar sus filas.
-- La tabla existe, pero al inicio estará vacía.
SELECT *
FROM clientes;

/*
Explicación breve:

id_cliente
  INTEGER: número entero.
  GENERATED ALWAYS AS IDENTITY: PostgreSQL genera valores 1, 2, 3...
  PRIMARY KEY: no se repite y no admite NULL.

nombre y apellido
  VARCHAR(100): texto de hasta 100 caracteres.
  NOT NULL: son obligatorios.

correo
  VARCHAR(150): texto.
  UNIQUE: no se puede repetir.
  NOT NULL: obligatorio.

telefono
  Puede ser NULL porque no todos los clientes lo registran.

fecha_registro
  TIMESTAMP: fecha con hora.
  DEFAULT CURRENT_TIMESTAMP: PostgreSQL pone fecha/hora actual si no se envía.

activo
  BOOLEAN: TRUE o FALSE.
  DEFAULT TRUE: un cliente nuevo inicia activo.
*/
