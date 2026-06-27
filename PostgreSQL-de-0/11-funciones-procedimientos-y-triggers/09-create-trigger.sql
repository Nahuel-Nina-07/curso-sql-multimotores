/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS clientes_auditoria CASCADE;
CREATE TABLE clientes_auditoria (
    id_auditoria INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_cliente INTEGER,
    accion VARCHAR(20) NOT NULL,
    fecha TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION fn_auditar_cliente()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO clientes_auditoria (id_cliente, accion)
    VALUES (NEW.id_cliente, TG_OP);
    RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_auditar_cliente_insert ON clientes;
CREATE TRIGGER trg_auditar_cliente_insert
AFTER INSERT ON clientes
FOR EACH ROW
EXECUTE FUNCTION fn_auditar_cliente();
