/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Inserta un cliente de prueba y revisa el log.
INSERT INTO clientes (nombre, apellido, correo)
VALUES ('Auditoría', 'Prueba', 'auditoria.prueba@ejemplo.com');

SELECT * FROM clientes_auditoria ORDER BY fecha DESC;
