/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- UNIQUE puede definirse con constraint o índice.
CREATE UNIQUE INDEX IF NOT EXISTS ux_clientes_correo_lower
ON clientes (LOWER(correo));

-- Este índice evita correos que solo cambien en mayúsculas/minúsculas.
