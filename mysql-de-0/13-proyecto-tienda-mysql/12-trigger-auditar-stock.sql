-- 12 — Trigger stock
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; CREATE TABLE IF NOT EXISTS auditoria_stock(id_auditoria BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,id_producto INT UNSIGNED NOT NULL,stock_anterior INT NOT NULL,stock_nuevo INT NOT NULL,fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB; DROP TRIGGER IF EXISTS trg_auditar_stock; DELIMITER // CREATE TRIGGER trg_auditar_stock AFTER UPDATE ON productos FOR EACH ROW BEGIN IF OLD.stock<>NEW.stock THEN INSERT INTO auditoria_stock(id_producto,stock_anterior,stock_nuevo) VALUES(NEW.id_producto,OLD.stock,NEW.stock); END IF; END// DELIMITER ;
