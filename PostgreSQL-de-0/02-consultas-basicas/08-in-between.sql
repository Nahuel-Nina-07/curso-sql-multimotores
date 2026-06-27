/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT nombre, precio
FROM productos_fundamentos
WHERE categoria IN ('Periféricos', 'Oficina');

-- BETWEEN incluye ambos extremos.
SELECT nombre, precio
FROM productos_fundamentos
WHERE precio BETWEEN 100 AND 500;
