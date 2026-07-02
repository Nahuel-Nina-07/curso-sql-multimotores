-- 10 — Ejercicios
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

SELECT CONCAT(nombre,' ',apellido) nombre,COALESCE(telefono,'No registrado') telefono,DATE_FORMAT(fecha_registro,'%d/%m/%Y %H:%i') registro FROM clientes;
