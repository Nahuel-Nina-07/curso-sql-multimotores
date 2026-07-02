# 06 — Conectarse a la base

En Workbench, selecciona `curso_mysql` como schema predeterminado. En SQL:

```sql
USE curso_mysql;
SELECT DATABASE();
```

Desde este archivo en adelante, comprueba que trabajas en `curso_mysql` antes de crear objetos.

```sql
SELECT * FROM curso_mysql.clientes;
```
