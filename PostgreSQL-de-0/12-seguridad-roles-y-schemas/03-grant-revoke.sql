/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

GRANT CONNECT ON DATABASE curso_postgresql TO app_lectura;
GRANT USAGE ON SCHEMA public TO app_lectura;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO app_lectura;

-- REVOKE INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public FROM app_lectura;
