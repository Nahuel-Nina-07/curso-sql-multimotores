/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT c.id_cliente, c.nombre, COUNT(p.id_pedido) AS total_pedidos
FROM clientes AS c
LEFT JOIN pedidos_demo AS p ON p.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY total_pedidos DESC, c.nombre;
