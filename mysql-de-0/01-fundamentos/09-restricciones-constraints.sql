-- 09 — Restricciones
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;


DROP TABLE IF EXISTS productos_restricciones;
CREATE TABLE productos_restricciones (
  id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  codigo VARCHAR(50) NOT NULL,
  precio DECIMAL(12,2) NOT NULL,
  stock INT NOT NULL DEFAULT 0,
  activo BOOLEAN NOT NULL DEFAULT TRUE,
  CONSTRAINT uq_producto_codigo UNIQUE (codigo),
  CONSTRAINT chk_producto_precio CHECK (precio >= 0),
  CONSTRAINT chk_producto_stock CHECK (stock >= 0)
) ENGINE=InnoDB;

INSERT INTO productos_restricciones(nombre,codigo,precio,stock)
VALUES ('Teclado','TEC-001',250.00,10);
