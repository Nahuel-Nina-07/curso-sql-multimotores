/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT p.id_pedido, c.nombre AS cliente, p.fecha, p.estado,
       COALESCE(SUM(d.cantidad*d.precio_unitario),0) AS total
FROM ventas.pedidos p
JOIN ventas.clientes c ON c.id_cliente=p.id_cliente
LEFT JOIN ventas.detalle_pedido d ON d.id_pedido=p.id_pedido
GROUP BY p.id_pedido,c.nombre,p.fecha,p.estado
ORDER BY p.id_pedido DESC;
