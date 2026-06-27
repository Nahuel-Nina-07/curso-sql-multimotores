/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

CREATE INDEX IF NOT EXISTS idx_productos_categoria_activo
ON productos_fundamentos (categoria, activo);

-- El orden importa: ayuda más a filtros que comienzan por categoria.
