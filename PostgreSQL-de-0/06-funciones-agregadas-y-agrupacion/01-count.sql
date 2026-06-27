/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT COUNT(*) AS total_clientes FROM clientes;
SELECT COUNT(telefono) AS clientes_con_telefono FROM clientes; -- no cuenta NULL
