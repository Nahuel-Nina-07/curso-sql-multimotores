/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT SUM(stock) AS stock_total FROM productos_fundamentos;
SELECT SUM(cantidad * precio_unitario) AS venta_total FROM pedido_producto_demo;
