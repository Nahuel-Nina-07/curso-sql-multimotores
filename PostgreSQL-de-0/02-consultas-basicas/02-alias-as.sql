/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- AS renombra una columna solo en el resultado, no en la tabla.
SELECT
    id_cliente AS id,
    nombre || ' ' || apellido AS cliente_completo,
    correo AS email
FROM clientes;

-- AS también sirve para dar alias a una tabla.
SELECT c.nombre, c.correo
FROM clientes AS c;
