/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

-- WHERE filtra filas antes de mostrarlas.
SELECT id_cliente, nombre, correo
FROM clientes
WHERE activo = TRUE;

SELECT nombre, precio, stock
FROM productos_fundamentos
WHERE precio > 100;
