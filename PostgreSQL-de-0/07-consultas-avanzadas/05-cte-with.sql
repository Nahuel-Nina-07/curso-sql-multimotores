/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

WITH productos_con_stock AS (
    SELECT id_producto, nombre, stock, precio
    FROM productos_fundamentos
    WHERE stock > 0
)
SELECT *
FROM productos_con_stock
ORDER BY precio DESC;
