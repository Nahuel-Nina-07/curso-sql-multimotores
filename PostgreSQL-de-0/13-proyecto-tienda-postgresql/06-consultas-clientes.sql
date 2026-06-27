/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT c.id_cliente, c.nombre, c.correo, COUNT(p.id_pedido) AS pedidos
FROM ventas.clientes c
LEFT JOIN ventas.pedidos p ON p.id_cliente=c.id_cliente
GROUP BY c.id_cliente, c.nombre, c.correo
ORDER BY pedidos DESC;
