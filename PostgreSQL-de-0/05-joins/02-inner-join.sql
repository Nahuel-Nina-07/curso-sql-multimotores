/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT p.id_pedido, p.estado, c.nombre, c.apellido
FROM pedidos_demo AS p
INNER JOIN clientes AS c ON c.id_cliente = p.id_cliente;
