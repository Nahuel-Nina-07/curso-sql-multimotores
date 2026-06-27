/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT c.nombre, p.id_pedido, p.estado
FROM clientes AS c
RIGHT JOIN pedidos_demo AS p ON p.id_cliente = c.id_cliente;
