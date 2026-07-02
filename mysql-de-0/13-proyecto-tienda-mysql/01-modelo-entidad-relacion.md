# 01 — Modelo entidad-relación

```text
categorias 1 --- N productos
clientes   1 --- N pedidos
pedidos    1 --- N detalle_pedido
productos  1 --- N detalle_pedido
pedidos    1 --- N pagos
```

`detalle_pedido` resuelve la relación muchos a muchos entre pedidos y productos.
