-- 05 — CTE WITH
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

WITH totales AS (SELECT id_pedido,SUM(cantidad*precio_unitario) total FROM detalle_pedido_rel GROUP BY id_pedido) SELECT * FROM totales WHERE total>=100;
