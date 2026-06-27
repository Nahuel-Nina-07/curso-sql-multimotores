/*
Clase 10 — Ejercicios de fundamentos

INSTRUCCIONES
1. Ejecuta cada bloque por separado.
2. Intenta resolver los retos antes de leer las soluciones.
3. No borres la tabla clientes de clases anteriores.
*/

-- =========================================================
-- PARTE A — Preguntas conceptuales (responde en un .md o README)
-- =========================================================

/*
1. ¿Qué diferencia hay entre SQL y PostgreSQL?
2. ¿Qué diferencia hay entre tabla, fila y columna?
3. ¿Qué significa PRIMARY KEY?
4. ¿Qué significa NOT NULL?
5. ¿Qué diferencia hay entre NULL, 0 y ''?
6. ¿Por qué el precio debería ser NUMERIC y no VARCHAR?
*/

-- =========================================================
-- PARTE B — Crea una tabla de categorías
-- =========================================================

/*
RETO:
Crea una tabla llamada categorias con:

- id_categoria: entero autogenerado y clave primaria.
- nombre: texto de hasta 100 caracteres, obligatorio y único.
- descripcion: texto opcional.
- activo: booleano obligatorio, true por defecto.
- fecha_creacion: fecha y hora obligatoria, valor actual por defecto.

Escribe tu solución debajo de esta línea.
*/


-- =========================================================
-- PARTE C — Crea una tabla de productos
-- =========================================================

/*
RETO:
Crea una tabla llamada productos con:

- id_producto: entero autogenerado y clave primaria.
- nombre: VARCHAR(150), obligatorio.
- codigo_sku: VARCHAR(50), obligatorio y único.
- precio: NUMERIC(12, 2), obligatorio y mayor a 0.
- stock: INTEGER, obligatorio, 0 por defecto y no negativo.
- activo: BOOLEAN, obligatorio y true por defecto.
- fecha_creacion: TIMESTAMP, obligatorio y fecha/hora actual por defecto.

No agregues todavía una clave foránea hacia categorias.
Eso será parte del módulo 04.
*/


-- =========================================================
-- PARTE D — Inserciones
-- =========================================================

/*
RETO:
Inserta estos tres productos:

1. Mouse inalámbrico, SKU MOU-001, precio 120.50, stock 15.
2. Monitor Full HD, SKU MON-001, precio 950.00, stock 5.
3. Webcam 1080p, SKU WEB-001, precio 300.00, stock 0.

Después consulta todos los productos.
*/


-- =========================================================
-- SOLUCIONES
-- Lee solo después de intentarlo.
-- =========================================================

-- Solución Parte B
CREATE TABLE categorias (
    id_categoria INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Solución Parte C
CREATE TABLE productos (
    id_producto INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    codigo_sku VARCHAR(50) NOT NULL UNIQUE,
    precio NUMERIC(12, 2) NOT NULL CHECK (precio > 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Solución Parte D
INSERT INTO productos (nombre, codigo_sku, precio, stock)
VALUES
    ('Mouse inalámbrico', 'MOU-001', 120.50, 15),
    ('Monitor Full HD', 'MON-001', 950.00, 5),
    ('Webcam 1080p', 'WEB-001', 300.00, 0);

SELECT *
FROM productos;

/*
RETOS EXTRA

1. Intenta insertar dos productos con el mismo SKU.
   ¿Qué constraint falla?

2. Intenta insertar un producto con precio -1.
   ¿Qué constraint falla?

3. Intenta insertar un producto sin nombre.
   ¿Qué constraint falla?

4. Ejecuta:
   SELECT current_database(), current_schema(), current_user;

   Explica qué representa cada resultado.
*/
