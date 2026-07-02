-- 05 — Consultas clientes
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; SELECT c.nombre,COUNT(p.id_pedido) pedidos FROM clientes c LEFT JOIN pedidos p ON p.id_cliente=c.id_cliente GROUP BY c.id_cliente,c.nombre;
