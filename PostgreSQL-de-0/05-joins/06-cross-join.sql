/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- CROSS JOIN genera todas las combinaciones. Úsalo con cuidado.
SELECT c.nombre, e.nombre AS etiqueta
FROM clientes AS c
CROSS JOIN etiquetas AS e;
