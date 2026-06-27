/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS direcciones_cliente CASCADE;
CREATE TABLE direcciones_cliente (
    id_direccion INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_cliente INTEGER NOT NULL REFERENCES clientes(id_cliente),
    ciudad VARCHAR(100) NOT NULL,
    direccion TEXT NOT NULL
);

-- id_cliente debe existir en clientes.
