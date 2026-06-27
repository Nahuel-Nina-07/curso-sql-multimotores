/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE PROCEDURE ventas.sp_crear_pedido_vacio(p_id_cliente INTEGER, INOUT p_id_pedido INTEGER DEFAULT NULL)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO ventas.pedidos (id_cliente) VALUES (p_id_cliente)
    RETURNING id_pedido INTO p_id_pedido;
END;
$$;

-- Ejemplo: CALL ventas.sp_crear_pedido_vacio(1, NULL);
