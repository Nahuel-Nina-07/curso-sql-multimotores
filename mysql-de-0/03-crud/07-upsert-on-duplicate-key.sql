-- 07 — UPSERT
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

INSERT INTO productos_restricciones(nombre,codigo,precio,stock) VALUES ('Teclado actualizado','TEC-001',270,12) ON DUPLICATE KEY UPDATE nombre=VALUES(nombre),precio=VALUES(precio),stock=VALUES(stock);
