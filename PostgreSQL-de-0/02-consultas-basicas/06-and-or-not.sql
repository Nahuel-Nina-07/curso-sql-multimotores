/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT nombre, precio, stock
FROM productos_fundamentos
WHERE activo = TRUE
  AND stock > 0
  AND precio <= 500;

SELECT nombre, categoria
FROM productos_fundamentos
WHERE categoria = 'Periféricos'
   OR categoria = 'Oficina';

SELECT nombre
FROM productos_fundamentos
WHERE NOT activo;
