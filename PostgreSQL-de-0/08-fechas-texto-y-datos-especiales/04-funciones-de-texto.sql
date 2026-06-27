/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    UPPER(nombre) AS mayusculas,
    LOWER(correo) AS correo_minusculas,
    LENGTH(nombre) AS longitud_nombre,
    TRIM('  texto  ') AS sin_espacios
FROM clientes;
