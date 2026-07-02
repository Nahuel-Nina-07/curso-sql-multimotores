-- 07 — CASE WHEN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT nombre,CASE WHEN activo THEN 'Activo' ELSE 'Inactivo' END estado FROM clientes;
