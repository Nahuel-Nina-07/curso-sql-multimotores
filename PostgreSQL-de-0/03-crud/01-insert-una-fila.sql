/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

INSERT INTO clientes (nombre, apellido, correo, telefono)
VALUES ('Lucía', 'Fernández', 'lucia.fernandez@ejemplo.com', '70000001')
RETURNING *;

-- Si lo ejecutas de nuevo, cambiar el correo evita romper UNIQUE.
