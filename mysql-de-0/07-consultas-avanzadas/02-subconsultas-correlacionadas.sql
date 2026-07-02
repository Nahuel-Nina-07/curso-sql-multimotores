-- 02 — Correlacionadas
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT c.nombre FROM clientes_rel c WHERE EXISTS (SELECT 1 FROM pedidos p WHERE p.id_cliente=c.id_cliente);
