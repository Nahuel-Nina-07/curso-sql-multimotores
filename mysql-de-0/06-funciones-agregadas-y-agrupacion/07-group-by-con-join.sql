-- GROUP BY con JOIN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT c.nombre,COUNT(p.id_pedido) AS pedidos FROM clientes_rel c LEFT JOIN pedidos p ON p.id_cliente=c.id_cliente GROUP BY c.id_cliente,c.nombre;
