# 02 — Qué es MySQL

MySQL es un **sistema gestor de bases de datos relacional**. El servidor recibe SQL, almacena los datos, aplica reglas y devuelve resultados.

## Componentes

```text
MySQL Server     servicio que guarda y procesa la base
MySQL Workbench  interfaz gráfica para escribir SQL y administrar el servidor
mysql            cliente por consola
InnoDB           motor de almacenamiento recomendado para este curso
```

`InnoDB` permite transacciones y claves foráneas. Usaremos tablas como esta:

```sql
CREATE TABLE ejemplo (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
) ENGINE = InnoDB;
```

En MySQL, una base y un schema son equivalentes. Usarás `curso_mysql.tabla`, no schemas internos como en PostgreSQL.
