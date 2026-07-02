-- 04 — Datos prueba
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

USE tienda_mysql; INSERT INTO categorias(nombre) VALUES('Tecnología'),('Hogar') ON DUPLICATE KEY UPDATE nombre=VALUES(nombre); INSERT INTO productos(id_categoria,nombre,codigo_sku,precio,stock) VALUES(1,'Teclado mecánico','TEC-001',250,20),(1,'Mouse inalámbrico','TEC-002',120,30),(2,'Lámpara LED','HOG-001',95,15) ON DUPLICATE KEY UPDATE precio=VALUES(precio),stock=VALUES(stock); INSERT INTO clientes(nombre,correo) VALUES('Ana Pérez','ana@tienda.com'),('Luis Rojas','luis@tienda.com') ON DUPLICATE KEY UPDATE nombre=VALUES(nombre);
