/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- ANALYZE ejecuta de verdad la consulta: úsalo con cuidado en modificaciones.
EXPLAIN ANALYZE
SELECT nombre, precio
FROM productos_fundamentos
WHERE categoria = 'Periféricos';
