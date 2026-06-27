/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Verifica primero el objetivo.
SELECT id_cliente, nombre, telefono FROM clientes WHERE correo = 'lucia.fernandez@ejemplo.com';

UPDATE clientes
SET telefono = '75550001'
WHERE correo = 'lucia.fernandez@ejemplo.com'
RETURNING *;
