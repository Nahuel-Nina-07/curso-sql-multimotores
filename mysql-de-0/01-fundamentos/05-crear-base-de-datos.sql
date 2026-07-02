-- 05 — Crear base de datos
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;


CREATE DATABASE IF NOT EXISTS curso_mysql
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;

USE curso_mysql;
SELECT DATABASE() AS base_actual;
