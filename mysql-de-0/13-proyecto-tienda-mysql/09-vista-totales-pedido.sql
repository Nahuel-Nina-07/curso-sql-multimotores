-- 09 — Vista totales
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; CREATE OR REPLACE VIEW vw_totales_pedido AS SELECT pe.id_pedido,pe.id_cliente,COALESCE(SUM(dp.cantidad*dp.precio_unitario),0) total FROM pedidos pe LEFT JOIN detalle_pedido dp ON dp.id_pedido=pe.id_pedido GROUP BY pe.id_pedido,pe.id_cliente;
