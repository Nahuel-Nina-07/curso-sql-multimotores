-- HAVING
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT id_pedido,SUM(cantidad*precio_unitario) AS total FROM detalle_pedido_rel GROUP BY id_pedido HAVING SUM(cantidad*precio_unitario)>=100;
