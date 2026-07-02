-- 07 — Primera tabla
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;


DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
  id_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  correo VARCHAR(150) NOT NULL,
  telefono VARCHAR(30) NULL,
  fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  activo BOOLEAN NOT NULL DEFAULT TRUE,
  PRIMARY KEY (id_cliente),
  UNIQUE KEY uq_clientes_correo (correo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESCRIBE clientes;
SHOW CREATE TABLE clientes;
