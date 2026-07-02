-- 03 — Transacción venta
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

START TRANSACTION; INSERT INTO pedidos(id_cliente) VALUES(1); SET @id_pedido:=LAST_INSERT_ID(); INSERT INTO detalle_pedido_rel(id_pedido,id_producto,cantidad,precio_unitario) VALUES(@id_pedido,1,1,100); COMMIT;
