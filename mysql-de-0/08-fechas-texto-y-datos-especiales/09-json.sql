-- 09 — JSON
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS configuraciones_json; CREATE TABLE configuraciones_json(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,configuracion JSON NOT NULL) ENGINE=InnoDB; INSERT INTO configuraciones_json(configuracion) VALUES(JSON_OBJECT('tema','oscuro','notificaciones',TRUE)); SELECT configuracion->>'$.tema' tema FROM configuraciones_json;
