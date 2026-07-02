-- 07 — Ejercicios
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

CREATE USER IF NOT EXISTS 'reportes'@'localhost' IDENTIFIED BY 'Cambia_Esta_Clave_Reportes_2026!'; GRANT SELECT ON curso_mysql.* TO 'reportes'@'localhost';
