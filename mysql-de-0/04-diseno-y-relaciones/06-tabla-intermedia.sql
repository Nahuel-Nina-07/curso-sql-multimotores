-- 06 — Tabla intermedia
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS detalle_pedido_rel; DROP TABLE IF EXISTS productos_rel;
CREATE TABLE productos_rel(id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(150) NOT NULL) ENGINE=InnoDB;
CREATE TABLE detalle_pedido_rel(id_pedido INT UNSIGNED NOT NULL,id_producto INT UNSIGNED NOT NULL,cantidad INT UNSIGNED NOT NULL,precio_unitario DECIMAL(12,2) NOT NULL,PRIMARY KEY(id_pedido,id_producto),FOREIGN KEY(id_pedido) REFERENCES pedidos(id_pedido),FOREIGN KEY(id_producto) REFERENCES productos_rel(id_producto)) ENGINE=InnoDB;
