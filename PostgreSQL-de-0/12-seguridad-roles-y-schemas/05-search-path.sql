/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SHOW search_path;
SET search_path TO ventas, public;
SELECT * FROM notas;

-- Para un rol: ALTER ROLE app_usuario SET search_path TO ventas, public;
