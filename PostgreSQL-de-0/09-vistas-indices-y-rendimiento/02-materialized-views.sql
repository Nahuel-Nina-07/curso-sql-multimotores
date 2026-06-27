/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP MATERIALIZED VIEW IF EXISTS mv_stock_por_categoria;
CREATE MATERIALIZED VIEW mv_stock_por_categoria AS
SELECT categoria, SUM(stock) AS stock_total
FROM productos_fundamentos
GROUP BY categoria;

SELECT * FROM mv_stock_por_categoria;
-- Cuando cambien datos: REFRESH MATERIALIZED VIEW mv_stock_por_categoria;
