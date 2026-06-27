/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

GRANT SELECT, INSERT ON ventas.notas TO app_lectura;
REVOKE DELETE ON ventas.notas FROM app_lectura;
