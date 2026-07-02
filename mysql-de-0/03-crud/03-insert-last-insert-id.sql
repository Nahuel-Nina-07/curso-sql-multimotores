-- 03 — LAST_INSERT_ID
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

INSERT INTO clientes(nombre,apellido,correo) VALUES ('Carla','Ríos','carla.rios@correo.com');
SELECT LAST_INSERT_ID() AS id_creado;
-- MySQL no usa INSERT ... RETURNING de forma general como PostgreSQL.
