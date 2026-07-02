-- 03 — EXISTS
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT p.nombre FROM productos_rel p WHERE EXISTS (SELECT 1 FROM detalle_pedido_rel d WHERE d.id_producto=p.id_producto);
