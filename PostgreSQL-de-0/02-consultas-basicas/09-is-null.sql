/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Nunca compares NULL con =. Usa IS NULL / IS NOT NULL.
SELECT id_cliente, nombre, telefono
FROM clientes
WHERE telefono IS NULL;

SELECT id_cliente, nombre, telefono
FROM clientes
WHERE telefono IS NOT NULL;
