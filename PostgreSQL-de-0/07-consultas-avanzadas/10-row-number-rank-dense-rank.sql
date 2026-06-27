/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    nombre, precio,
    ROW_NUMBER() OVER (ORDER BY precio DESC) AS fila,
    RANK() OVER (ORDER BY precio DESC) AS rango,
    DENSE_RANK() OVER (ORDER BY precio DESC) AS rango_sin_saltos
FROM productos_fundamentos;
