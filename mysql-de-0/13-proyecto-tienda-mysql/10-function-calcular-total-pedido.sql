-- 10 — Function total pedido
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; DROP FUNCTION IF EXISTS fn_total_pedido; DELIMITER // CREATE FUNCTION fn_total_pedido(p_id_pedido INT) RETURNS DECIMAL(12,2) READS SQL DATA BEGIN DECLARE v_total DECIMAL(12,2); SELECT COALESCE(SUM(cantidad*precio_unitario),0) INTO v_total FROM detalle_pedido WHERE id_pedido=p_id_pedido; RETURN v_total; END// DELIMITER ;
