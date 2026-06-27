/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS empleados_demo CASCADE;
CREATE TABLE empleados_demo (
    id_empleado INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_jefe INTEGER REFERENCES empleados_demo(id_empleado)
);

SELECT e.nombre AS empleado, j.nombre AS jefe
FROM empleados_demo AS e
LEFT JOIN empleados_demo AS j ON j.id_empleado = e.id_jefe;
