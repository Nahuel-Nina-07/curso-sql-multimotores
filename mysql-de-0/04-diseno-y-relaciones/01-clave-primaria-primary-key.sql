-- 01 — Primary Key
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS ejemplo_pk;
CREATE TABLE ejemplo_pk(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(100) NOT NULL) ENGINE=InnoDB;
