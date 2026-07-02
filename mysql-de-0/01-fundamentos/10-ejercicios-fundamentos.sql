-- 10 — Ejercicios fundamentos
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;


-- 1. Crea categorias con PK AUTO_INCREMENT, nombre único, activo y fecha.
-- 2. Inserta tres categorías.
-- SOLUCIÓN:
DROP TABLE IF EXISTS categorias;
CREATE TABLE categorias (
  id_categoria INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  descripcion VARCHAR(255),
  activo BOOLEAN NOT NULL DEFAULT TRUE,
  fecha_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;
INSERT INTO categorias(nombre,descripcion) VALUES
('Tecnología','Productos tecnológicos'),('Hogar','Productos para el hogar'),('Accesorios','Complementos');
SELECT * FROM categorias;
