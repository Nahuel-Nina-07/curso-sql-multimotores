-- 11 — Ejercicios
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP FUNCTION IF EXISTS fn_aplicar_descuento; DELIMITER // CREATE FUNCTION fn_aplicar_descuento(p_precio DECIMAL(12,2)) RETURNS DECIMAL(12,2) DETERMINISTIC NO SQL BEGIN RETURN ROUND(p_precio*0.90,2); END// DELIMITER ; SELECT fn_aplicar_descuento(100);
