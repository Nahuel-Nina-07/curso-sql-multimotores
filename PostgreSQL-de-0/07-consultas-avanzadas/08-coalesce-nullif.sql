/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    nombre,
    COALESCE(telefono, 'Sin teléfono') AS telefono_mostrado
FROM clientes;

SELECT NULLIF(TRIM('   '), '') AS ejemplo_nullif;
