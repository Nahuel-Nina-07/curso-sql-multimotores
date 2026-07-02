-- 07 — SELF JOIN
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados(id_empleado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,nombre VARCHAR(100) NOT NULL,id_jefe INT UNSIGNED NULL,FOREIGN KEY(id_jefe) REFERENCES empleados(id_empleado)) ENGINE=InnoDB;
SELECT e.nombre AS empleado,j.nombre AS jefe FROM empleados e LEFT JOIN empleados j ON j.id_empleado=e.id_jefe;
