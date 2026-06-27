/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    nombre, stock,
    CASE
        WHEN stock = 0 THEN 'SIN STOCK'
        WHEN stock <= 5 THEN 'STOCK BAJO'
        ELSE 'DISPONIBLE'
    END AS estado_stock
FROM productos_fundamentos;
