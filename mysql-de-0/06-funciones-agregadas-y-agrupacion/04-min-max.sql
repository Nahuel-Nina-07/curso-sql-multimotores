-- MIN y MAX
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT MIN(precio_unitario) AS minimo,MAX(precio_unitario) AS maximo FROM detalle_pedido_rel;
