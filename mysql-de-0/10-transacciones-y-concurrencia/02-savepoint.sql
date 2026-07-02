-- 02 — SAVEPOINT
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

START TRANSACTION; UPDATE productos_restricciones SET stock=stock-1 WHERE id_producto=1; SAVEPOINT despues_producto; ROLLBACK TO SAVEPOINT despues_producto; COMMIT;
