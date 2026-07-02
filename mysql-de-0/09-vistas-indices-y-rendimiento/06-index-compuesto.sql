-- 06 — Índice compuesto
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

CREATE INDEX idx_pedidos_cliente_fecha ON pedidos(id_cliente,fecha_pedido);
