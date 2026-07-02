-- 03 — DATE_ADD DATE_SUB INTERVAL
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT DATE_ADD(CURDATE(),INTERVAL 7 DAY) en_una_semana; SELECT DATE_SUB(CURDATE(),INTERVAL 1 MONTH) hace_un_mes;
