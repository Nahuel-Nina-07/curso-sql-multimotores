-- 09 — Ejercicios
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

CREATE TABLE autores(id_autor INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(150) NOT NULL) ENGINE=InnoDB;
CREATE TABLE libros(id_libro INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,id_autor INT UNSIGNED NOT NULL,titulo VARCHAR(200) NOT NULL,FOREIGN KEY(id_autor) REFERENCES autores(id_autor)) ENGINE=InnoDB;
