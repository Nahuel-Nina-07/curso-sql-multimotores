-- SUM
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT SUM(precio_unitario*cantidad) AS total FROM detalle_pedido_rel;
