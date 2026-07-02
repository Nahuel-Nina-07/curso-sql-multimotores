-- 06 — CROSS JOIN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT c.nombre AS cliente,pr.nombre AS producto FROM clientes_rel c CROSS JOIN productos_rel pr;
