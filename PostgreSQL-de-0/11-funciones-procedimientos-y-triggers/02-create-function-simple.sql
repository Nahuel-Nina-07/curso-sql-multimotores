/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE FUNCTION fn_calcular_iva(p_monto NUMERIC)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN ROUND(p_monto * 0.13, 2);
END;
$$;

SELECT fn_calcular_iva(100.00);
