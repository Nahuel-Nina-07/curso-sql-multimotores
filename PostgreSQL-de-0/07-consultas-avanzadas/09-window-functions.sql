/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    nombre, categoria, precio,
    AVG(precio) OVER (PARTITION BY categoria) AS promedio_categoria
FROM productos_fundamentos;
