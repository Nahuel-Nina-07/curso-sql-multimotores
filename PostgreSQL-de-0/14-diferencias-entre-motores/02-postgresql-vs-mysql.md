# PostgreSQL vs MySQL

Los dos usan SQL y son comunes en desarrollo web. PostgreSQL suele destacar por funciones avanzadas, tipos, extensiones y cumplimiento de estándares; MySQL es muy popular por su ecosistema y facilidad de hosting.

| Tema | PostgreSQL | MySQL |
|---|---|---|
| Autoincremento | `GENERATED ... AS IDENTITY` | `AUTO_INCREMENT` |
| Insensible a mayúsculas | `ILIKE` | depende de collation; suele usarse `LIKE` |
| UPSERT | `ON CONFLICT` | `ON DUPLICATE KEY UPDATE` |
| Booleano | `BOOLEAN` real | `BOOLEAN` es alias de `TINYINT(1)` |
| JSON | `JSONB` muy usado | `JSON` |

Aprender PostgreSQL te deja una base excelente para MySQL; debes aprender sus diferencias de sintaxis, no volver a empezar desde cero.
