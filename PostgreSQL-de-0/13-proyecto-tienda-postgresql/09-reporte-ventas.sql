/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT DATE_TRUNC('month', p.fecha) AS mes,
       COUNT(DISTINCT p.id_pedido) AS pedidos,
       SUM(d.cantidad*d.precio_unitario) AS ventas
FROM ventas.pedidos p
JOIN ventas.detalle_pedido d ON d.id_pedido=p.id_pedido
GROUP BY DATE_TRUNC('month',p.fecha)
ORDER BY mes;
