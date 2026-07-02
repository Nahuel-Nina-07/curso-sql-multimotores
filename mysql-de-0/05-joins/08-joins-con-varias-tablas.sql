-- 08 — JOIN varias tablas
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT c.nombre,p.id_pedido,pr.nombre,d.cantidad,d.precio_unitario FROM pedidos p JOIN clientes_rel c ON c.id_cliente=p.id_cliente JOIN detalle_pedido_rel d ON d.id_pedido=p.id_pedido JOIN productos_rel pr ON pr.id_producto=d.id_producto;
