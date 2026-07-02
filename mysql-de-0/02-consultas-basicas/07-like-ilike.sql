-- 07 — LIKE
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

-- MySQL no tiene ILIKE.
SELECT * FROM clientes WHERE nombre LIKE 'A%';
SELECT * FROM clientes WHERE LOWER(nombre) LIKE LOWER('%ana%');
