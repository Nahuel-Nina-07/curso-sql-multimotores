/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

SELECT p.nombre, p.sku, p.precio, p.stock, c.nombre AS categoria
FROM catalogo.productos p
JOIN catalogo.categorias c ON c.id_categoria=p.id_categoria
WHERE p.activo
ORDER BY p.nombre;
