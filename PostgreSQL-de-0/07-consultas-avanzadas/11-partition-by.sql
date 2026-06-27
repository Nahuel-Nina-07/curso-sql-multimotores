/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    nombre, categoria, precio,
    SUM(precio) OVER (PARTITION BY categoria) AS suma_categoria,
    COUNT(*) OVER (PARTITION BY categoria) AS productos_categoria
FROM productos_fundamentos;
