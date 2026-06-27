/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS productos_etiquetas CASCADE;
DROP TABLE IF EXISTS etiquetas CASCADE;
CREATE TABLE etiquetas (
    id_etiqueta INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL UNIQUE
);
CREATE TABLE productos_etiquetas (
    id_producto INTEGER NOT NULL REFERENCES productos_fundamentos(id_producto) ON DELETE CASCADE,
    id_etiqueta INTEGER NOT NULL REFERENCES etiquetas(id_etiqueta) ON DELETE CASCADE,
    PRIMARY KEY (id_producto, id_etiqueta)
);
