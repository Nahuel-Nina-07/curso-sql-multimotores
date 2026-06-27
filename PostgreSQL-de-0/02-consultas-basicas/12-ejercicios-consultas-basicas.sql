/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

/* EJERCICIOS
1) Lista nombre y correo de clientes activos.
2) Busca productos con precio entre 50 y 300.
3) Busca clientes cuyo apellido comience con P sin distinguir mayúsculas.
4) Lista productos ordenados por stock descendente y nombre ascendente.
5) Muestra categorías sin duplicados.

SOLUCIONES
*/
SELECT nombre, correo FROM clientes WHERE activo = TRUE;
SELECT nombre, precio FROM productos_fundamentos WHERE precio BETWEEN 50 AND 300;
SELECT nombre, apellido FROM clientes WHERE apellido ILIKE 'p%';
SELECT nombre, stock FROM productos_fundamentos ORDER BY stock DESC, nombre ASC;
SELECT DISTINCT categoria FROM productos_fundamentos WHERE categoria IS NOT NULL;
