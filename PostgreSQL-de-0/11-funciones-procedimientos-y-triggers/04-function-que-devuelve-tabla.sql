/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE FUNCTION fn_productos_por_categoria(p_categoria VARCHAR)
RETURNS TABLE (id_producto INTEGER, nombre VARCHAR, precio NUMERIC, stock INTEGER)
LANGUAGE sql
AS $$
    SELECT id_producto, nombre, precio, stock
    FROM productos_fundamentos
    WHERE categoria = p_categoria
    ORDER BY nombre;
$$;

SELECT * FROM fn_productos_por_categoria('Periféricos');
