# PostgreSQL vs SQL Server

Ambos son motores relacionales potentes y usan SQL, pero tienen dialectos distintos.

| Tema | PostgreSQL | SQL Server |
|---|---|---|
| Autoincremento moderno | `GENERATED ... AS IDENTITY` | `IDENTITY(1,1)` |
| Booleano | `BOOLEAN`, `TRUE/FALSE` | `BIT`, `1/0` |
| Procedimiento | `CREATE PROCEDURE`, `CALL` | `CREATE PROCEDURE`, `EXEC` |
| Concatenar texto | `||` o `CONCAT` | `+` o `CONCAT` |
| Límite de filas | `LIMIT` | `TOP` u `OFFSET ... FETCH` |
| Esquema por defecto | `public` | `dbo` |

La lógica relacional es igual: tablas, claves, joins, índices, transacciones y constraints.
