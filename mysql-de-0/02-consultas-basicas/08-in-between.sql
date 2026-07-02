-- 08 — IN y BETWEEN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT * FROM clientes WHERE id_cliente IN (1,2,3);
SELECT * FROM productos_restricciones WHERE precio BETWEEN 100 AND 300;
