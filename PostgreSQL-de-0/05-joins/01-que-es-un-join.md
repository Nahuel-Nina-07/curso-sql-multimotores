# JOIN

Un `JOIN` combina filas de tablas relacionadas usando una condición, normalmente una clave foránea.

Ejemplo: `pedidos_demo.id_cliente` apunta a `clientes.id_cliente`. Un JOIN permite mostrar pedido y cliente en una sola consulta.

- `INNER JOIN`: solo coincidencias.
- `LEFT JOIN`: todo lo de la tabla izquierda aunque no tenga coincidencia.
- `RIGHT JOIN`: equivalente conceptual invirtiendo el orden; se usa menos.
- `FULL OUTER JOIN`: filas coincidentes y no coincidentes de ambos lados.
