/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE INDEX IF NOT EXISTS idx_clientes_correo
ON clientes (correo);

CREATE INDEX IF NOT EXISTS idx_productos_categoria
ON productos_fundamentos (categoria);
