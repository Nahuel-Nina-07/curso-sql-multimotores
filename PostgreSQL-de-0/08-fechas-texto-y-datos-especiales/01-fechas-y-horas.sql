/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT CURRENT_DATE AS hoy, CURRENT_TIME AS hora_actual, CURRENT_TIMESTAMP AS instante_actual;
SELECT DATE '2026-06-26' + 10 AS fecha_mas_diez_dias;
