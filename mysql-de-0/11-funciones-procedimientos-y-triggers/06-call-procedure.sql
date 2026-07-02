-- 06 — CALL
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

CALL sp_desactivar_cliente(1); SELECT * FROM clientes WHERE id_cliente=1;
