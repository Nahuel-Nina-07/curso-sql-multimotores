-- 07 — BOOLEAN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT id_cliente,activo,IF(activo,'Activo','Inactivo') estado FROM clientes;
