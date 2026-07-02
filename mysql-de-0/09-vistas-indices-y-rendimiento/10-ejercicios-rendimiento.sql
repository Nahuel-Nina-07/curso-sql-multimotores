-- 10 — Ejercicios
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

EXPLAIN ANALYZE SELECT * FROM pedidos WHERE id_cliente=1 ORDER BY fecha_pedido DESC;
