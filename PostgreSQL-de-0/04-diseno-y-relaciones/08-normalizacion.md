# Normalización

Normalizar significa evitar guardar la misma información repetida sin necesidad.

## Problema

No guardes esto en una sola tabla: `pedido(cliente_nombre, cliente_correo, producto_1, producto_2, ...)`. Repite datos, limita productos y es difícil de actualizar.

## Diseño correcto

- `clientes`: datos del cliente.
- `productos`: datos del producto.
- `pedidos`: cabecera del pedido.
- `detalle_pedido`: una fila por producto comprado.

## Regla práctica

Cada tabla representa una entidad o una relación. Cada columna debe depender de la clave de su tabla, no de otra columna que pertenece a otra entidad.
