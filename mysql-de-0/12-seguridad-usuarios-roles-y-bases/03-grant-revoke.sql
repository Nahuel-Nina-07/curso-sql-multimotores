-- 03 — GRANT REVOKE
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

GRANT SELECT,INSERT,UPDATE,DELETE ON curso_mysql.* TO 'app_tienda'@'localhost'; SHOW GRANTS FOR 'app_tienda'@'localhost'; -- REVOKE DELETE ON curso_mysql.* FROM 'app_tienda'@'localhost';
