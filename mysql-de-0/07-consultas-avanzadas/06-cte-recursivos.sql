-- 06 — CTE recursivos
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

WITH RECURSIVE numeros AS (SELECT 1 numero UNION ALL SELECT numero+1 FROM numeros WHERE numero<10) SELECT * FROM numeros;
