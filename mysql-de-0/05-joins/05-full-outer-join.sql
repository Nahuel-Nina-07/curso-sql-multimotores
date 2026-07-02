-- 05 — FULL OUTER JOIN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

-- MySQL no tiene FULL OUTER JOIN nativo.
SELECT c.id_cliente,c.nombre,p.id_pedido FROM clientes_rel c LEFT JOIN pedidos p ON p.id_cliente=c.id_cliente
UNION
SELECT c.id_cliente,c.nombre,p.id_pedido FROM clientes_rel c RIGHT JOIN pedidos p ON p.id_cliente=c.id_cliente;
