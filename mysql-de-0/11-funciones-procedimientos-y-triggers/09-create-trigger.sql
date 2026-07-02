-- 09 — CREATE TRIGGER
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TRIGGER IF EXISTS trg_validar_stock;
DELIMITER //
CREATE TRIGGER trg_validar_stock BEFORE INSERT ON productos_restricciones FOR EACH ROW BEGIN IF NEW.stock<0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='El stock no puede ser negativo'; END IF; END//
DELIMITER ;
