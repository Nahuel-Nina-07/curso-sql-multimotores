-- 10 — Trigger auditoría
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

DROP TABLE IF EXISTS auditoria_clientes; CREATE TABLE auditoria_clientes(id_auditoria BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,id_cliente INT UNSIGNED NOT NULL,accion VARCHAR(20) NOT NULL,fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB; DROP TRIGGER IF EXISTS trg_clientes_auditoria_update; DELIMITER // CREATE TRIGGER trg_clientes_auditoria_update AFTER UPDATE ON clientes FOR EACH ROW BEGIN INSERT INTO auditoria_clientes(id_cliente,accion) VALUES(NEW.id_cliente,'UPDATE'); END// DELIMITER ;
