-- 06 — Consultas productos
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; SELECT p.nombre,c.nombre categoria,p.precio,p.stock FROM productos p JOIN categorias c ON c.id_categoria=p.id_categoria ORDER BY p.nombre;
