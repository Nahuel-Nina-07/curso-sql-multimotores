/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT nombre, precio
FROM productos_fundamentos
WHERE precio > ALL (
    SELECT precio FROM productos_fundamentos WHERE categoria = 'Oficina'
);

SELECT nombre, precio
FROM productos_fundamentos
WHERE precio > ANY (
    SELECT precio FROM productos_fundamentos WHERE categoria = 'Periféricos'
);
