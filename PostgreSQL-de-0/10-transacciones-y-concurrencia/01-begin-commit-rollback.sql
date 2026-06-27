/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

BEGIN;

UPDATE productos_fundamentos
SET stock = stock - 1
WHERE codigo_sku = 'TEC-001' AND stock > 0;

-- Si todo está correcto: COMMIT;
-- Si ocurrió un problema: ROLLBACK;
ROLLBACK; -- este archivo deja la práctica sin cambios
