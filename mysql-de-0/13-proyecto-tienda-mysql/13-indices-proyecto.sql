-- 13 — Índices proyecto
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; CREATE INDEX idx_productos_categoria ON productos(id_categoria); CREATE INDEX idx_pedidos_cliente_fecha ON pedidos(id_cliente,fecha_pedido); CREATE INDEX idx_detalle_pedido ON detalle_pedido(id_pedido); CREATE INDEX idx_detalle_producto ON detalle_pedido(id_producto);
