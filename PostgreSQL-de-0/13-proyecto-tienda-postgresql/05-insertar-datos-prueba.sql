/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

INSERT INTO catalogo.categorias (nombre) VALUES ('Tecnología'), ('Oficina') ON CONFLICT (nombre) DO NOTHING;
INSERT INTO catalogo.productos (id_categoria, nombre, sku, precio, stock)
SELECT c.id_categoria, v.nombre, v.sku, v.precio, v.stock
FROM (VALUES
    ('Tecnología','Teclado Pro','PRO-TEC-001',250.00::NUMERIC,20),
    ('Tecnología','Mouse Pro','PRO-MOU-001',120.00::NUMERIC,30),
    ('Oficina','Cuaderno','PRO-CUA-001',25.00::NUMERIC,100)
) AS v(categoria,nombre,sku,precio,stock)
JOIN catalogo.categorias c ON c.nombre=v.categoria
ON CONFLICT (sku) DO NOTHING;
INSERT INTO ventas.clientes (nombre, correo) VALUES
('María López','maria.lopez@tienda.com'), ('José Ríos','jose.rios@tienda.com')
ON CONFLICT (correo) DO NOTHING;
