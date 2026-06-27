/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS perfiles_cliente CASCADE;
CREATE TABLE perfiles_cliente (
    id_perfil INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_cliente INTEGER NOT NULL UNIQUE REFERENCES clientes(id_cliente) ON DELETE CASCADE,
    biografia TEXT,
    fecha_nacimiento DATE
);

-- UNIQUE en id_cliente evita que un cliente tenga dos perfiles.
