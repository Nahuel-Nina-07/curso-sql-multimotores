-- 11 — LIMIT OFFSET
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT * FROM clientes ORDER BY id_cliente LIMIT 10;
SELECT * FROM clientes ORDER BY id_cliente LIMIT 10 OFFSET 10;
