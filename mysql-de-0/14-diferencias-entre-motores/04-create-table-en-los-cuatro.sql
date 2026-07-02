-- 04 — CREATE TABLE cuatro motores
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

-- MySQL
CREATE TABLE clientes_mysql(id INT AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(100) NOT NULL);
-- PostgreSQL: id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY
-- SQL Server: id INT IDENTITY(1,1) PRIMARY KEY
-- SQLite: id INTEGER PRIMARY KEY
