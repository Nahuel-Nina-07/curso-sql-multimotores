-- 09 — Ejercicios JOIN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT p.id_pedido,c.nombre FROM pedidos p JOIN clientes_rel c ON c.id_cliente=p.id_cliente;
SELECT c.nombre,p.id_pedido FROM clientes_rel c LEFT JOIN pedidos p ON p.id_cliente=c.id_cliente;
