/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Cambia el ID por uno existente.
CALL sp_desactivar_cliente(1);
SELECT id_cliente, nombre, activo FROM clientes WHERE id_cliente = 1;
