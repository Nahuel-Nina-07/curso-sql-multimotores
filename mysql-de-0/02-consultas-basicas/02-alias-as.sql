-- 02 — Alias AS
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT id_cliente AS id, CONCAT(nombre,' ',apellido) AS nombre_completo, correo AS email FROM clientes;
