-- 05 — Concatenación
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT CONCAT(nombre,' ',apellido) nombre_completo,CONCAT_WS(' - ',nombre,correo) cliente FROM clientes;
