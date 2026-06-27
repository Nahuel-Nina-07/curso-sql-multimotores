/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Una tabla intermedia puede guardar datos propios de la relación.
DROP TABLE IF EXISTS pedido_producto_demo CASCADE;
CREATE TABLE pedido_producto_demo (
    id_pedido INTEGER NOT NULL REFERENCES pedidos_demo(id_pedido) ON DELETE CASCADE,
    id_producto INTEGER NOT NULL REFERENCES productos_fundamentos(id_producto),
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(12,2) NOT NULL CHECK (precio_unitario > 0),
    PRIMARY KEY (id_pedido, id_producto)
);
