-- 10 — ROW NUMBER RANK DENSE RANK
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT id_pedido,precio_unitario,ROW_NUMBER() OVER(ORDER BY precio_unitario DESC) fila,RANK() OVER(ORDER BY precio_unitario DESC) rango,DENSE_RANK() OVER(ORDER BY precio_unitario DESC) rango_sin_saltos FROM detalle_pedido_rel;
