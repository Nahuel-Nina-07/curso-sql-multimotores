-- 08 — Manejadores de errores
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP PROCEDURE IF EXISTS sp_insertar_producto_seguro;
DELIMITER //
CREATE PROCEDURE sp_insertar_producto_seguro(IN p_nombre VARCHAR(150),IN p_codigo VARCHAR(50),IN p_precio DECIMAL(12,2)) BEGIN DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END; START TRANSACTION; INSERT INTO productos_restricciones(nombre,codigo,precio) VALUES(p_nombre,p_codigo,p_precio); COMMIT; END//
DELIMITER ;
