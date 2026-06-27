/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS demo_clave_primaria CASCADE;
CREATE TABLE demo_clave_primaria (
    id_demo INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
INSERT INTO demo_clave_primaria (nombre) VALUES ('Primero'), ('Segundo');
SELECT * FROM demo_clave_primaria;
