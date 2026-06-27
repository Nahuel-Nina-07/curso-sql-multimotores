/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE VIEW vw_clientes_activos AS
SELECT id_cliente, nombre, apellido, correo, fecha_registro
FROM clientes
WHERE activo = TRUE;

SELECT * FROM vw_clientes_activos;
