/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Incluye clientes sin pedidos; columnas de p serán NULL.
SELECT c.id_cliente, c.nombre, p.id_pedido, p.estado
FROM clientes AS c
LEFT JOIN pedidos_demo AS p ON p.id_cliente = c.id_cliente
ORDER BY c.id_cliente;
