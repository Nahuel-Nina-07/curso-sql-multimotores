/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT nombre, precio, stock
FROM productos_fundamentos
WHERE precio >= 100;

SELECT nombre, stock
FROM productos_fundamentos
WHERE stock <> 0;

-- Operadores: =, <>, >, >=, <, <=
