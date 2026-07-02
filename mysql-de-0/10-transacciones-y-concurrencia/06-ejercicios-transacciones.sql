-- 06 — Ejercicios
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

START TRANSACTION; SELECT * FROM productos_restricciones WHERE id_producto=1 FOR UPDATE; UPDATE productos_restricciones SET stock=stock-1 WHERE id_producto=1 AND stock>0; ROLLBACK;
