# Clase 01 — ¿Qué es SQL?

## Objetivo
Al terminar esta clase podrás explicar qué es SQL, para qué sirve y qué diferencia hay entre SQL y PostgreSQL.

---

## 1. SQL no es una base de datos

**SQL** significa **Structured Query Language** o **Lenguaje de Consulta Estructurado**.

SQL es un lenguaje que usamos para comunicarnos con una base de datos. Con él podemos:

- crear bases de datos y tablas;
- guardar datos;
- consultar datos;
- modificar datos;
- eliminar datos;
- definir reglas para proteger la información.

Ejemplo:

```sql
SELECT nombre, correo
FROM clientes
WHERE activo = TRUE;
```

Aunque todavía no entiendas cada palabra, esta consulta le pide a la base de datos:

> “Muéstrame el nombre y correo de los clientes activos”.

---

## 2. SQL y PostgreSQL no son lo mismo

Usa esta comparación:

| Concepto | Ejemplo |
|---|---|
| Idioma | Español |
| Persona que entiende ese idioma | Una persona boliviana, argentina o española |
| Lenguaje de bases de datos | SQL |
| Motores que entienden SQL | PostgreSQL, SQL Server, MySQL, SQLite, Oracle |

Por tanto:

```text
SQL         = lenguaje
PostgreSQL  = motor de base de datos que entiende SQL
```

Los motores comparten muchas instrucciones:

```sql
SELECT
INSERT
UPDATE
DELETE
CREATE TABLE
```

Pero pueden diferir en características avanzadas: tipos de datos, funciones, procedimientos, JSON, índices, permisos y sintaxis específica.

---

## 3. Las cuatro familias de instrucciones SQL

### DDL — definir la estructura
Sirve para crear o cambiar objetos de la base de datos.

```sql
CREATE TABLE clientes (...);
ALTER TABLE clientes ADD COLUMN telefono VARCHAR(30);
DROP TABLE clientes;
```

### DML — trabajar con los datos
Sirve para insertar, consultar, actualizar y eliminar filas.

```sql
INSERT INTO clientes (...);
SELECT * FROM clientes;
UPDATE clientes SET activo = FALSE;
DELETE FROM clientes WHERE id_cliente = 10;
```

### DCL — permisos
Sirve para dar o quitar permisos.

```sql
GRANT SELECT ON clientes TO lector_app;
REVOKE INSERT ON clientes FROM lector_app;
```

### TCL — transacciones
Sirve para confirmar o deshacer grupos de operaciones.

```sql
BEGIN;
COMMIT;
ROLLBACK;
```

No necesitas memorizar las siglas hoy. Lo importante es reconocer que SQL puede crear estructura, manejar datos, controlar permisos y proteger operaciones.

---

## 4. Un ejemplo cotidiano

Imagina una tienda.

Sin una base de datos podrías tener un Excel con clientes, productos, ventas y stock. A medida que crece el negocio aparecen problemas:

- dos personas editan el mismo archivo;
- se repiten correos;
- se borra una fila por accidente;
- no sabes qué producto vendió más;
- es difícil relacionar un pedido con el cliente que lo hizo.

Una base de datos relacional organiza esa información en tablas relacionadas.

```text
clientes
productos
pedidos
detalle_pedido
```

Después SQL te permite responder preguntas:

```sql
-- ¿Cuántos pedidos hizo cada cliente?
SELECT id_cliente, COUNT(*) AS cantidad_pedidos
FROM pedidos
GROUP BY id_cliente;
```

---

## 5. Regla importante: SQL es declarativo

Normalmente con SQL describes **qué resultado quieres**, no cada paso interno que debe ejecutar el servidor.

```sql
SELECT nombre
FROM clientes
WHERE activo = TRUE;
```

Tú indicas qué datos deseas. PostgreSQL decide la mejor manera de encontrarlos, usando sus reglas internas e índices cuando existen.

---

## 6. Convenciones que usaremos en este curso

Usaremos nombres en minúsculas y con guion bajo:

```sql
id_cliente
fecha_registro
detalle_pedido
```

No usaremos espacios ni tildes en nombres técnicos:

```text
Correcto:  fecha_registro
Evitar:    Fecha Registro
Evitar:    fechaRegistro (no es incorrecto, pero mantendremos snake_case)
Evitar:    fecha_registró
```

Palabras SQL en mayúsculas para leer mejor:

```sql
SELECT nombre
FROM clientes
WHERE activo = TRUE;
```

PostgreSQL no obliga a escribirlas en mayúsculas; es una convención visual.

---

## 7. Resumen

```text
SQL es un lenguaje.
PostgreSQL es un motor de base de datos.
SQL permite crear, consultar y modificar datos.
Las tablas organizan información relacionada.
```

## Preguntas de repaso

1. ¿SQL es un motor o un lenguaje?
2. Nombra dos motores que entiendan SQL.
3. ¿Qué hace `SELECT`?
4. ¿Qué hace `CREATE TABLE`?
5. ¿Qué diferencia hay entre DDL y DML?
