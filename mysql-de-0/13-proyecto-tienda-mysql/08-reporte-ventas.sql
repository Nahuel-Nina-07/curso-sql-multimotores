-- 08 — Reporte ventas
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; SELECT DATE(pe.fecha_pedido) fecha,SUM(dp.cantidad*dp.precio_unitario) ventas FROM pedidos pe JOIN detalle_pedido dp ON dp.id_pedido=pe.id_pedido WHERE pe.estado='PAGADO' GROUP BY DATE(pe.fecha_pedido) ORDER BY fecha;
