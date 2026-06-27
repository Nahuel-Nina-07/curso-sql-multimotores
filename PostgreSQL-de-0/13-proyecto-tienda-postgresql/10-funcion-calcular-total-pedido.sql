/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE FUNCTION ventas.fn_total_pedido(p_id_pedido INTEGER)
RETURNS NUMERIC
LANGUAGE sql
AS $$
    SELECT COALESCE(SUM(cantidad * precio_unitario), 0)
    FROM ventas.detalle_pedido
    WHERE id_pedido = p_id_pedido;
$$;
