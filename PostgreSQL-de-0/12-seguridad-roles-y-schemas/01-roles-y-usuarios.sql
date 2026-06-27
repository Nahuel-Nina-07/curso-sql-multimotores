/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- En PostgreSQL, un rol puede iniciar sesión o ser solo un grupo de permisos.
CREATE ROLE IF NOT EXISTS app_lectura;
