-- 01 — START TRANSACTION COMMIT ROLLBACK
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

START TRANSACTION; UPDATE productos_restricciones SET stock=stock-1 WHERE id_producto=1 AND stock>0; COMMIT; -- Sustituye COMMIT por ROLLBACK para deshacer.
