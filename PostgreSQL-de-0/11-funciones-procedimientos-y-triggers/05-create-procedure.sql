/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE PROCEDURE sp_desactivar_cliente(p_id_cliente INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE clientes
    SET activo = FALSE
    WHERE id_cliente = p_id_cliente;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'No existe cliente con id %', p_id_cliente;
    END IF;
END;
$$;
