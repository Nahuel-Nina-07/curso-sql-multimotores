/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    nombre || ' ' || apellido AS nombre_completo,
    CONCAT(nombre, ' ', apellido) AS nombre_con_concat
FROM clientes;
