/*
Clase 08 — Tipos de datos principales en PostgreSQL

Este archivo crea una tabla SOLO para practicar tipos.
No reemplaza la tabla clientes.
*/

DROP TABLE IF EXISTS ejemplo_tipos_datos;

CREATE TABLE ejemplo_tipos_datos (
    id_ejemplo INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    -- Enteros
    cantidad INTEGER, 
    visitas_grandes BIGINT, 

    -- Decimales exactos: recomendado para dinero
    precio NUMERIC(12, 2), = 123456789012.34
    porcentaje NUMERIC(5, 2), = 12345.67

    -- Texto
    nombre VARCHAR(100), 
    descripcion TEXT, 

    -- Verdadero/falso
    activo BOOLEAN, 

    -- Fechas y horas
    fecha_nacimiento DATE,
    hora_apertura TIME,
    fecha_registro TIMESTAMP,
    fecha_evento_con_zona TIMESTAMPTZ,

    -- Identificador único global
    codigo_externo UUID
);

INSERT INTO ejemplo_tipos_datos (
    cantidad,
    visitas_grandes,
    precio,
    porcentaje,
    nombre,
    descripcion,
    activo,
    fecha_nacimiento,
    hora_apertura,
    fecha_registro,
    fecha_evento_con_zona,
    codigo_externo
)
VALUES (
    25,
    5000000000,
    125.50,
    13.00,
    'Producto de prueba',
    'Texto largo que puede superar 100 caracteres sin requerir un límite definido en la columna.',
    TRUE,
    DATE '2000-05-10',
    TIME '08:30:00',
    TIMESTAMP '2026-06-26 14:30:00',
    TIMESTAMPTZ '2026-06-26 14:30:00-04',
    '550e8400-e29b-41d4-a716-446655440000'
);

SELECT *
FROM ejemplo_tipos_datos;

/*
GUÍA DE ELECCIÓN

INTEGER
  Para conteos, ids pequeños/medianos, stock, cantidades.
  Ejemplo: stock INTEGER NOT NULL DEFAULT 0

BIGINT
  Para números enteros muy grandes.
  Ejemplo: total_visitas BIGINT

NUMERIC(precision, scale)
  Para dinero y cálculos exactos.
  NUMERIC(12, 2) admite hasta 12 dígitos totales, con 2 decimales.
  Ejemplo: 9999999999.99
  Evita usar REAL o DOUBLE PRECISION para dinero por posibles aproximaciones binarias.

VARCHAR(n)
  Texto con límite máximo.
  Ejemplo: correo VARCHAR(150)

TEXT
  Texto sin límite práctico definido por la columna.
  Ejemplo: descripcion TEXT

BOOLEAN
  TRUE, FALSE o NULL.
  Recomendación: si el campo es obligatorio:
  activo BOOLEAN NOT NULL DEFAULT TRUE

DATE
  Solo fecha: 2026-06-26.
  Ejemplo: fecha_nacimiento DATE

TIME
  Solo hora: 08:30:00.

TIMESTAMP
  Fecha y hora SIN zona horaria.
  Útil cuando el valor representa una hora local fija.

TIMESTAMPTZ
  Fecha y hora con manejo de zona horaria.
  En sistemas distribuidos suele ser más seguro para eventos reales:
  fecha_creacion TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP

UUID
  Identificador alfanumérico único.
  Más adelante verás cómo generarlo automáticamente.
*/

/*
Práctica: intenta insertar valores correctos.

INSERT INTO ejemplo_tipos_datos (cantidad, precio, nombre, activo)
VALUES (10, 49.90, 'Segundo ejemplo', FALSE);

Prueba mentalmente por qué estas inserciones son inválidas:

-- cantidad espera número:
-- INSERT INTO ejemplo_tipos_datos (cantidad) VALUES ('hola');

-- activo espera boolean:
-- INSERT INTO ejemplo_tipos_datos (activo) VALUES ('quizás');

-- fecha_nacimiento espera fecha válida:
-- INSERT INTO ejemplo_tipos_datos (fecha_nacimiento) VALUES ('no-se');
*/
