/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE OR REPLACE FUNCTION ventas.fn_descontar_stock()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE catalogo.productos
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto
      AND stock >= NEW.cantidad;
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Stock insuficiente para producto %', NEW.id_producto;
    END IF;
    RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_descontar_stock ON ventas.detalle_pedido;
CREATE TRIGGER trg_descontar_stock
BEFORE INSERT ON ventas.detalle_pedido
FOR EACH ROW EXECUTE FUNCTION ventas.fn_descontar_stock();
