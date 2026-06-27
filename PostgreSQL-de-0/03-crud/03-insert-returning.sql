/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- RETURNING evita hacer un SELECT adicional para conocer el valor creado.
INSERT INTO productos_fundamentos (nombre, codigo_sku, precio, stock, categoria)
VALUES ('Mouse ergonómico', 'MOU-ERG-001', 95.50, 12, 'Periféricos')
RETURNING id_producto, nombre, precio, fecha_creacion;
