-- 12 — Ejercicios
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

-- Busca clientes activos, correos únicos y productos entre 100 y 300.
SELECT * FROM clientes WHERE activo=TRUE;
SELECT DISTINCT correo FROM clientes;
SELECT * FROM productos_restricciones WHERE precio BETWEEN 100 AND 300 ORDER BY precio DESC;
