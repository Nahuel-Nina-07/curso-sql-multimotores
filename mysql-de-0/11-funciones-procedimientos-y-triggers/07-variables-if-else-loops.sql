-- 07 — Variables IF ELSE
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP PROCEDURE IF EXISTS sp_clasificar_stock;
DELIMITER //
CREATE PROCEDURE sp_clasificar_stock(IN p_stock INT,OUT p_estado VARCHAR(30)) BEGIN IF p_stock<=0 THEN SET p_estado='Sin stock'; ELSEIF p_stock<=5 THEN SET p_estado='Stock bajo'; ELSE SET p_estado='Disponible'; END IF; END//
DELIMITER ;
CALL sp_clasificar_stock(3,@estado); SELECT @estado;
