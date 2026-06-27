/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE FUNCTION fn_dividir_seguro(p_dividendo NUMERIC, p_divisor NUMERIC)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN p_dividendo / p_divisor;
EXCEPTION
    WHEN division_by_zero THEN
        RAISE EXCEPTION 'No se puede dividir entre cero';
END;
$$;
