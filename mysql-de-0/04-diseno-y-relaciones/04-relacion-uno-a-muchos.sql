-- 04 — Uno a muchos
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS pedidos; DROP TABLE IF EXISTS clientes_rel;
CREATE TABLE clientes_rel(id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(100) NOT NULL) ENGINE=InnoDB;
CREATE TABLE pedidos(id_pedido INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,id_cliente INT UNSIGNED NOT NULL,fecha_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,FOREIGN KEY(id_cliente) REFERENCES clientes_rel(id_cliente)) ENGINE=InnoDB;
