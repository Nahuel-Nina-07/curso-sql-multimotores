-- 04 — Roles
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

CREATE ROLE IF NOT EXISTS 'rol_lectura'; GRANT SELECT ON curso_mysql.* TO 'rol_lectura'; GRANT 'rol_lectura' TO 'app_tienda'@'localhost'; SET DEFAULT ROLE 'rol_lectura' TO 'app_tienda'@'localhost';
