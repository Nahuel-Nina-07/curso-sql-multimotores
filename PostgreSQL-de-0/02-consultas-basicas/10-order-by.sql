/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT nombre, apellido, fecha_registro
FROM clientes
ORDER BY apellido ASC, nombre ASC;

SELECT nombre, precio
FROM productos_fundamentos
ORDER BY precio DESC;
