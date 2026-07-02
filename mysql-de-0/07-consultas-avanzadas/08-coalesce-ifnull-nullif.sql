-- 08 — COALESCE IFNULL NULLIF
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT nombre,COALESCE(telefono,'Sin teléfono') telefono,NULLIF(telefono,'') telefono_null FROM clientes;
