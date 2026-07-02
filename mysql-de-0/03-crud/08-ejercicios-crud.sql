-- 08 — Ejercicios CRUD
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

INSERT INTO clientes(nombre,apellido,correo) VALUES ('Prueba','CRUD','prueba.crud@correo.com');
UPDATE clientes SET activo=FALSE WHERE correo='prueba.crud@correo.com';
DELETE FROM clientes WHERE correo='prueba.crud@correo.com';
