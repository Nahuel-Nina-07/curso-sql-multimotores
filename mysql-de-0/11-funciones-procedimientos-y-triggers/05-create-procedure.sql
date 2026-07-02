-- 05 — CREATE PROCEDURE
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP PROCEDURE IF EXISTS sp_desactivar_cliente;
DELIMITER //
CREATE PROCEDURE sp_desactivar_cliente(IN p_id_cliente INT) BEGIN UPDATE clientes SET activo=FALSE WHERE id_cliente=p_id_cliente; END//
DELIMITER ;
