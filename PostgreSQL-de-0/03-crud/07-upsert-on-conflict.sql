/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- UPSERT: inserta; si codigo_sku ya existe, actualiza.
INSERT INTO productos_fundamentos (nombre, codigo_sku, precio, stock, categoria)
VALUES ('Teclado mecánico actualizado', 'TEC-001', 270.00, 15, 'Periféricos')
ON CONFLICT (codigo_sku)
DO UPDATE SET
    nombre = EXCLUDED.nombre,
    precio = EXCLUDED.precio,
    stock = EXCLUDED.stock
RETURNING *;
