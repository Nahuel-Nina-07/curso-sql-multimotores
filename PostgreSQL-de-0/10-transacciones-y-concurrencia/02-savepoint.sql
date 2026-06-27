/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

BEGIN;
UPDATE productos_fundamentos SET stock = stock + 1 WHERE codigo_sku = 'TEC-001';
SAVEPOINT despues_primer_cambio;
UPDATE productos_fundamentos SET stock = stock - 999 WHERE codigo_sku = 'TEC-001';
ROLLBACK TO SAVEPOINT despues_primer_cambio;
COMMIT;
