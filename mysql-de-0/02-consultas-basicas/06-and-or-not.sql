-- 06 — AND OR NOT
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT * FROM productos_restricciones WHERE activo=TRUE AND stock>0;
SELECT * FROM clientes WHERE NOT activo=TRUE;
