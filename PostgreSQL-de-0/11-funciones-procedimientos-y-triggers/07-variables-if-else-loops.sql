/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE FUNCTION fn_estado_stock(p_stock INTEGER)
RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
    v_resultado TEXT;
BEGIN
    IF p_stock <= 0 THEN
        v_resultado := 'SIN STOCK';
    ELSIF p_stock <= 5 THEN
        v_resultado := 'STOCK BAJO';
    ELSE
        v_resultado := 'DISPONIBLE';
    END IF;
    RETURN v_resultado;
END;
$$;

SELECT fn_estado_stock(3);
