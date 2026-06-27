/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- HAVING filtra grupos; WHERE filtra filas antes de agrupar.
SELECT categoria, COUNT(*) AS cantidad
FROM productos_fundamentos
WHERE activo = TRUE
GROUP BY categoria
HAVING COUNT(*) >= 1;
