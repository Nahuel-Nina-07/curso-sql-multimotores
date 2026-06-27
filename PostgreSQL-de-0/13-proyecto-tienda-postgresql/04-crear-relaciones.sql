/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- Las relaciones ya se declararon mediante FOREIGN KEY en 03-crear-tablas.sql.
-- Verificación rápida de constraints del proyecto:
SELECT conname, conrelid::regclass AS tabla
FROM pg_constraint
WHERE contype = 'f'
  AND connamespace IN ('catalogo'::regnamespace, 'ventas'::regnamespace);
