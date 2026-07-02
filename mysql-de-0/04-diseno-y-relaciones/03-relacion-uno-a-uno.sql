-- 03 — Uno a uno
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS perfiles; DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios(id_usuario INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,correo VARCHAR(150) NOT NULL UNIQUE) ENGINE=InnoDB;
CREATE TABLE perfiles(id_perfil INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,id_usuario INT UNSIGNED NOT NULL UNIQUE,biografia TEXT,FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE) ENGINE=InnoDB;
