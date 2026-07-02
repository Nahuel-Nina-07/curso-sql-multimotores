-- 07 — ON DELETE y ON UPDATE
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;

-- RESTRICT bloquea el borrado; CASCADE propaga; SET NULL requiere una FK nullable.
-- Ejemplo: FOREIGN KEY(id_cliente) REFERENCES clientes_rel(id_cliente) ON DELETE RESTRICT ON UPDATE CASCADE;
