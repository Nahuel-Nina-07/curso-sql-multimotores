-- 03 — Function parámetros
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP FUNCTION IF EXISTS fn_total_linea;
DELIMITER //
CREATE FUNCTION fn_total_linea(p_cantidad INT,p_precio DECIMAL(12,2)) RETURNS DECIMAL(12,2) DETERMINISTIC NO SQL BEGIN RETURN p_cantidad*p_precio; END//
DELIMITER ;
SELECT fn_total_linea(3,25.5);
