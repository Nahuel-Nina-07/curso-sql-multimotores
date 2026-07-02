# 01 — Qué es SQL

SQL significa **Structured Query Language**. Es el lenguaje para definir tablas, guardar datos, consultarlos, modificarlos y administrar permisos.

```text
SQL       = lenguaje
MySQL     = sistema que entiende y ejecuta SQL
PostgreSQL, SQL Server y SQLite = otros sistemas que entienden gran parte de SQL
```

## Familias de instrucciones

| Tipo | Comandos | Objetivo |
|---|---|---|
| DDL | CREATE, ALTER, DROP | Estructura |
| DML | INSERT, UPDATE, DELETE | Datos |
| DQL | SELECT | Consultas |
| DCL | GRANT, REVOKE | Permisos |
| TCL | START TRANSACTION, COMMIT, ROLLBACK | Transacciones |

Ejemplos:

```sql
SELECT nombre FROM clientes;
INSERT INTO clientes (nombre) VALUES ('Ana');
UPDATE clientes SET activo = TRUE WHERE id_cliente = 1;
DELETE FROM clientes WHERE id_cliente = 1;
```
