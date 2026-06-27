/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE FUNCTION fn_producto_con_stock(p_codigo_sku VARCHAR)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
    v_stock INTEGER;
BEGIN
    SELECT stock INTO v_stock
    FROM productos_fundamentos
    WHERE codigo_sku = p_codigo_sku;

    RETURN COALESCE(v_stock, 0) > 0;
END;
$$;

SELECT fn_producto_con_stock('TEC-001');
