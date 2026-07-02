-- 02 — Foreign Key
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS pedidos_fk; DROP TABLE IF EXISTS clientes_fk;
CREATE TABLE clientes_fk(id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(100) NOT NULL) ENGINE=InnoDB;
CREATE TABLE pedidos_fk(id_pedido INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,id_cliente INT UNSIGNED NOT NULL,CONSTRAINT fk_pedidos_cliente FOREIGN KEY(id_cliente) REFERENCES clientes_fk(id_cliente)) ENGINE=InnoDB;
