# Clase 06 — Conectarse a la base de datos

## Objetivo
Conectarte a `curso_postgresql`, entender el contexto de ejecución de una consulta y aprender a verificar dónde estás trabajando.

---

## 1. Después de crear la base

La clase anterior creó:

```text
curso_postgresql
```

Ahora debes abrir el Query Tool **dentro de esa base**.

En pgAdmin:

```text
Servers
└── PostgreSQL
    └── Databases
        └── curso_postgresql
```

Clic derecho sobre `curso_postgresql` → **Query Tool**.

---

## 2. Comprueba tu contexto

Ejecuta:

```sql
SELECT current_database();
```

Resultado esperado:

```text
curso_postgresql
```

Después ejecuta:

```sql
SELECT current_user;
```

Probablemente verás:

```text
postgres
```

Ahora consulta el schema activo:

```sql
SELECT current_schema();
```

Normalmente el resultado será:

```text
public
```

---

## 3. La idea de contexto

Cuando ejecutas:

```sql
CREATE TABLE clientes (...);
```

PostgreSQL necesita saber:

1. ¿En qué servidor?
2. ¿En qué base de datos?
3. ¿En qué schema?
4. ¿Con qué usuario y permisos?

Al inicio trabajarás así:

```text
Servidor: PostgreSQL local
Base:    curso_postgresql
Schema:  public
Usuario: postgres
```

---

## 4. ¿Qué significa `public.clientes`?

Una tabla puede nombrarse con schema y tabla:

```sql
public.clientes
```

Esto significa:

```text
schema: public
tabla:  clientes
```

Como `public` suele estar configurado en el `search_path`, normalmente escribirás:

```sql
clientes
```

Y PostgreSQL entenderá:

```sql
public.clientes
```

Comprueba tu ruta de búsqueda:

```sql
SHOW search_path;
```

Por ahora no necesitas cambiarla.

---

## 5. Lista los schemas y tablas

Para ver schemas existentes:

```sql
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;
```

Para ver tablas del schema `public`:

```sql
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;
```

Antes de crear tu primera tabla puede que no veas ninguna tabla creada por ti. Eso es normal.

---

## 6. Error común: ejecutar scripts en la base equivocada

Puedes crear una tabla sin querer en `postgres` en lugar de `curso_postgresql`.

Por eso antes de crear objetos importantes ejecuta:

```sql
SELECT current_database(), current_schema(), current_user;
```

Si el resultado no es el esperado, abre Query Tool desde la base correcta.

---

## 7. Nombres y mayúsculas en PostgreSQL

PostgreSQL convierte a minúsculas los identificadores sin comillas.

Esto:

```sql
CREATE TABLE Clientes (
    IdCliente INTEGER
);
```

se guarda internamente como:

```text
clientes
idcliente
```

Por eso usaremos minúsculas y `snake_case` desde el comienzo:

```sql
CREATE TABLE clientes (
    id_cliente INTEGER
);
```

Evita crear objetos con comillas:

```sql
CREATE TABLE "Clientes" (
    "IdCliente" INTEGER
);
```

No es imposible, pero luego estarías obligado a escribir siempre las comillas y respetar las mayúsculas:

```sql
SELECT "IdCliente"
FROM "Clientes";
```

---

## 8. Checklist

- [ ] Query Tool abierto en `curso_postgresql`.
- [ ] `SELECT current_database();` devuelve `curso_postgresql`.
- [ ] `SELECT current_schema();` devuelve `public`.
- [ ] Entiendes que una consulta depende de servidor, base, schema y usuario.
