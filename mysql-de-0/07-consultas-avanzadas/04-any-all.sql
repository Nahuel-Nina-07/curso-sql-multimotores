-- 04 — ANY y ALL
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT nombre FROM productos_rel WHERE id_producto = ANY (SELECT id_producto FROM detalle_pedido_rel);
