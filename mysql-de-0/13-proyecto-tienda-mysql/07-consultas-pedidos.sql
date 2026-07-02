-- 07 — Consultas pedidos
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; SELECT pe.id_pedido,c.nombre cliente,pe.estado,COALESCE(SUM(dp.cantidad*dp.precio_unitario),0) total FROM pedidos pe JOIN clientes c ON c.id_cliente=pe.id_cliente LEFT JOIN detalle_pedido dp ON dp.id_pedido=pe.id_pedido GROUP BY pe.id_pedido,c.nombre,pe.estado;
