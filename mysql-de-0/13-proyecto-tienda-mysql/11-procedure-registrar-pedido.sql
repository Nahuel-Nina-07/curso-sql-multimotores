-- 11 — Procedure registrar pedido
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; DROP PROCEDURE IF EXISTS sp_crear_pedido_simple; DELIMITER // CREATE PROCEDURE sp_crear_pedido_simple(IN p_id_cliente INT,IN p_id_producto INT,IN p_cantidad INT) BEGIN DECLARE v_stock INT; DECLARE v_precio DECIMAL(12,2); DECLARE v_pedido INT; DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END; START TRANSACTION; SELECT stock,precio INTO v_stock,v_precio FROM productos WHERE id_producto=p_id_producto FOR UPDATE; IF v_stock IS NULL OR v_stock<p_cantidad THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='No existe stock suficiente'; END IF; INSERT INTO pedidos(id_cliente) VALUES(p_id_cliente); SET v_pedido=LAST_INSERT_ID(); INSERT INTO detalle_pedido(id_pedido,id_producto,cantidad,precio_unitario) VALUES(v_pedido,p_id_producto,p_cantidad,v_precio); UPDATE productos SET stock=stock-p_cantidad WHERE id_producto=p_id_producto; COMMIT; END// DELIMITER ;
