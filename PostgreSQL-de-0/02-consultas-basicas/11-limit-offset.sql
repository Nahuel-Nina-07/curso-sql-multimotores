/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- LIMIT limita filas. OFFSET salta filas: paginación básica.
SELECT id_cliente, nombre, apellido
FROM clientes
ORDER BY id_cliente
LIMIT 10 OFFSET 0;

SELECT nombre, precio
FROM productos_fundamentos
ORDER BY precio DESC
LIMIT 5;
