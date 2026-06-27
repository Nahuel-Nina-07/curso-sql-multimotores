/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- SELECT elige columnas y FROM indica la tabla.
SELECT id_cliente, nombre, apellido, correo, activo
FROM clientes;

-- * significa todas las columnas. Úsalo en aprendizaje, no como costumbre en producción.
SELECT * FROM clientes;
