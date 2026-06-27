/*
Clase 09 — Restricciones (constraints)

Las constraints son reglas aplicadas por PostgreSQL.
No dependen de que tu frontend, backend o usuario se comporten bien.
*/

DROP TABLE IF EXISTS productos_fundamentos;

CREATE TABLE productos_fundamentos (
    id_producto INTEGER GENERATED ALWAYS AS IDENTITY,
    nombre VARCHAR(150) NOT NULL,
    codigo_sku VARCHAR(50) NOT NULL,
    precio NUMERIC(12, 2) NOT NULL,
    stock INTEGER NOT NULL DEFAULT 0,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    categoria VARCHAR(50),
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_productos_fundamentos
        PRIMARY KEY (id_producto),

    CONSTRAINT uq_productos_fundamentos_codigo_sku
        UNIQUE (codigo_sku),

    CONSTRAINT ck_productos_fundamentos_precio_positivo
        CHECK (precio > 0),

    CONSTRAINT ck_productos_fundamentos_stock_no_negativo
        CHECK (stock >= 0),

    CONSTRAINT ck_productos_fundamentos_nombre_no_vacio
        CHECK (LENGTH(TRIM(nombre)) > 0)
);

-- Inserción válida.
INSERT INTO productos_fundamentos (
    nombre,
    codigo_sku,
    precio,
    stock,
    categoria
)
VALUES (
    'Teclado mecánico',
    'TEC-001',
    250.00,
    10,
    'Periféricos'
);

SELECT *
FROM productos_fundamentos;

/*
Prueba estas consultas UNA POR UNA y lee el error.
Después puedes comentarlas nuevamente.

1. NOT NULL: falta el nombre
INSERT INTO productos_fundamentos (codigo_sku, precio)
VALUES ('TEC-002', 100.00);

2. UNIQUE: SKU repetido
INSERT INTO productos_fundamentos (nombre, codigo_sku, precio)
VALUES ('Otro teclado', 'TEC-001', 300.00);

3. CHECK: precio no puede ser cero ni negativo
INSERT INTO productos_fundamentos (nombre, codigo_sku, precio)
VALUES ('Mouse', 'MOU-001', -20.00);

4. CHECK: stock no puede ser negativo
INSERT INTO productos_fundamentos (nombre, codigo_sku, precio, stock)
VALUES ('Monitor', 'MON-001', 900.00, -1);

5. CHECK: nombre no puede ser solo espacios
INSERT INTO productos_fundamentos (nombre, codigo_sku, precio)
VALUES ('   ', 'VAC-001', 20.00);
*/

/*
DIFERENCIA ENTRE DEFAULT, NOT NULL Y CHECK

DEFAULT:
  Da un valor si el INSERT no envía uno.
  stock INTEGER DEFAULT 0

NOT NULL:
  Exige que exista un valor.
  nombre VARCHAR(150) NOT NULL

CHECK:
  Valida una regla.
  CHECK (precio > 0)

Ejemplo:
activo BOOLEAN NOT NULL DEFAULT TRUE

- Si no mandas activo, guarda TRUE.
- No permite guardar NULL.
*/
