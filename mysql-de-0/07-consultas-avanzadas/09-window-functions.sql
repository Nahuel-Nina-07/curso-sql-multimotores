-- 09 — Window Functions
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT id_pedido,precio_unitario,ROW_NUMBER() OVER(ORDER BY precio_unitario DESC) posicion FROM detalle_pedido_rel;
