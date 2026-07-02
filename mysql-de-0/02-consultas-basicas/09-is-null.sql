-- 09 — IS NULL
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT * FROM clientes WHERE telefono IS NULL;
SELECT * FROM clientes WHERE telefono IS NOT NULL;
