/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    nombre, precio,
    ROUND(precio * 1.13, 2) AS precio_con_impuesto,
    CEIL(precio) AS redondeo_arriba,
    FLOOR(precio) AS redondeo_abajo
FROM productos_fundamentos;
