-- 02 — Function simple
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP FUNCTION IF EXISTS fn_calcular_iva;
DELIMITER //
CREATE FUNCTION fn_calcular_iva(p_monto DECIMAL(12,2)) RETURNS DECIMAL(12,2) DETERMINISTIC NO SQL BEGIN RETURN ROUND(p_monto*0.13,2); END//
DELIMITER ;
SELECT fn_calcular_iva(100);
