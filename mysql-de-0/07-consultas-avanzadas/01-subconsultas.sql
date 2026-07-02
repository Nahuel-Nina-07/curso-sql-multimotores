-- 01 — Subconsultas
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT nombre FROM productos_rel WHERE id_producto IN (SELECT id_producto FROM detalle_pedido_rel WHERE cantidad>=2);
