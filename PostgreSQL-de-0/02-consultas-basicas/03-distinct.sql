/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- DISTINCT elimina filas repetidas en el resultado.
SELECT DISTINCT activo
FROM clientes;

SELECT DISTINCT categoria
FROM productos_fundamentos
WHERE categoria IS NOT NULL;
