-- 04 — RIGHT JOIN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT c.nombre,p.id_pedido FROM clientes_rel c RIGHT JOIN pedidos p ON p.id_cliente=c.id_cliente;
