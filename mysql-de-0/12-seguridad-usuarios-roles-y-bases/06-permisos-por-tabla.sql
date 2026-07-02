-- 06 — Permisos por tabla
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

GRANT SELECT ON curso_mysql.clientes TO 'app_tienda'@'localhost'; GRANT INSERT,UPDATE ON curso_mysql.pedidos TO 'app_tienda'@'localhost';
