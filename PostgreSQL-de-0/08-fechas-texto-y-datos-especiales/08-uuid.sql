/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Necesitas extensión para gen_random_uuid().
CREATE EXTENSION IF NOT EXISTS pgcrypto;
DROP TABLE IF EXISTS documentos_uuid;
CREATE TABLE documentos_uuid (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    titulo VARCHAR(150) NOT NULL
);
INSERT INTO documentos_uuid (titulo) VALUES ('Documento de prueba') RETURNING *;
