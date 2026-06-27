/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT
    p.id_pedido,
    c.nombre || ' ' || c.apellido AS cliente,
    pr.nombre AS producto,
    dp.cantidad,
    dp.precio_unitario,
    dp.cantidad * dp.precio_unitario AS subtotal
FROM pedidos_demo AS p
JOIN clientes AS c ON c.id_cliente = p.id_cliente
JOIN pedido_producto_demo AS dp ON dp.id_pedido = p.id_pedido
JOIN productos_fundamentos AS pr ON pr.id_producto = dp.id_producto;
