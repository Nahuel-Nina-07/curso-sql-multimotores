-- 01 — Views
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

CREATE OR REPLACE VIEW vw_clientes_activos AS SELECT id_cliente,nombre,apellido,correo FROM clientes WHERE activo=TRUE; SELECT * FROM vw_clientes_activos;
