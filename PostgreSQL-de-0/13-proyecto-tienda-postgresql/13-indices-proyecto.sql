/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE INDEX IF NOT EXISTS idx_productos_categoria ON catalogo.productos(id_categoria);
CREATE INDEX IF NOT EXISTS idx_pedidos_cliente_fecha ON ventas.pedidos(id_cliente, fecha DESC);
CREATE INDEX IF NOT EXISTS idx_detalle_pedido ON ventas.detalle_pedido(id_pedido);
