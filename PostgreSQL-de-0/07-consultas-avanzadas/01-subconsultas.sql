/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Productos por encima del precio promedio.
SELECT nombre, precio
FROM productos_fundamentos
WHERE precio > (SELECT AVG(precio) FROM productos_fundamentos);
