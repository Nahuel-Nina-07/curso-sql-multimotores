# 08 — Normalización

Normalizar significa evitar listas en una columna, datos repetidos y contradicciones.

Diseño malo: `pedido(cliente_nombre, producto_1, producto_2)`.

Diseño correcto: `clientes`, `pedidos`, `productos`, `detalle_pedido`.

Cada tabla debe representar una idea y cada celda debe tener un valor atómico.
