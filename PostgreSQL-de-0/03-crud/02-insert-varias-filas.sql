/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

INSERT INTO clientes (nombre, apellido, correo, telefono)
VALUES
    ('Pedro', 'Soto', 'pedro.soto@ejemplo.com', NULL),
    ('Elena', 'Vargas', 'elena.vargas@ejemplo.com', '70000002');
