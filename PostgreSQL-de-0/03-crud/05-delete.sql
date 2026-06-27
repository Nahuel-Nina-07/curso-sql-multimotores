/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- DELETE borra FILAS. Siempre usa WHERE salvo que realmente quieras borrar todo.
DELETE FROM clientes
WHERE correo = 'pedro.soto@ejemplo.com'
RETURNING id_cliente, nombre, correo;
