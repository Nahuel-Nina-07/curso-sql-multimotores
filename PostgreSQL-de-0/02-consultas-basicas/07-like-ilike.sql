/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- LIKE distingue mayúsculas/minúsculas; ILIKE no las distingue.
SELECT nombre, correo
FROM clientes
WHERE nombre ILIKE 'm%';

-- % = cualquier cantidad de caracteres. _ = exactamente un carácter.
SELECT nombre
FROM productos_fundamentos
WHERE nombre ILIKE '%teclado%';
