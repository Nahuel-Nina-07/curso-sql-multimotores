/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT c.id_cliente, c.nombre
FROM clientes AS c
WHERE EXISTS (
    SELECT 1
    FROM pedidos_demo AS p
    WHERE p.id_cliente = c.id_cliente
);
