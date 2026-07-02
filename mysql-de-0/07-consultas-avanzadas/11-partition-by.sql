-- 11 — PARTITION BY
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT id_pedido,id_producto,cantidad,SUM(cantidad) OVER(PARTITION BY id_pedido) items_del_pedido FROM detalle_pedido_rel;
