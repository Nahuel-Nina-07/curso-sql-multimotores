/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE SCHEMA IF NOT EXISTS ventas;
CREATE TABLE IF NOT EXISTS ventas.notas (
    id_nota INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    contenido TEXT NOT NULL
);
