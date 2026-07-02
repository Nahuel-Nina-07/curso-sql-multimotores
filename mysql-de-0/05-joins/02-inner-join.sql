-- 02 — INNER JOIN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT c.nombre,p.id_pedido,p.fecha_pedido FROM clientes_rel c INNER JOIN pedidos p ON p.id_cliente=c.id_cliente;
