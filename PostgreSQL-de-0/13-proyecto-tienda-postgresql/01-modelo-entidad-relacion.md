# Proyecto tienda: modelo entidad-relación

Entidades principales:

- `catalogo.categorias` → organiza productos.
- `catalogo.productos` → catálogo y stock.
- `ventas.clientes` → compradores.
- `ventas.pedidos` → cabecera de venta.
- `ventas.detalle_pedido` → líneas de cada pedido.
- `ventas.pagos` → pagos asociados al pedido.

Relaciones:

- Una categoría tiene muchos productos.
- Un cliente tiene muchos pedidos.
- Un pedido tiene muchos detalles.
- Un producto puede aparecer en muchos detalles.
- Un pedido puede tener uno o más pagos según la regla del negocio.
