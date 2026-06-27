# Clase 02 — ¿Qué es PostgreSQL?

## Objetivo
Entender qué es PostgreSQL, qué objetos existen dentro de él y qué parte usarás durante el curso.

---

## 1. Definición simple

PostgreSQL es un sistema gestor de bases de datos relacional y de código abierto.

Descompongamos esa frase:

- **Sistema gestor**: es un programa que guarda, organiza y protege datos.
- **Base de datos**: conjunto organizado de información.
- **Relacional**: organiza principalmente la información en tablas que se conectan por claves.
- **Código abierto**: su código puede ser revisado y mejorado por la comunidad bajo su licencia.

PostgreSQL recibe consultas SQL, valida permisos, guarda datos en disco, mantiene reglas e intenta ejecutar las consultas de forma eficiente.

---

## 2. PostgreSQL como servidor

PostgreSQL normalmente funciona como un servicio o servidor.

```text
Tu aplicación / pgAdmin / DBeaver
              │
              │ conexión
              ▼
       Servidor PostgreSQL
              │
              ├── base de datos curso_postgresql
              ├── base de datos tienda
              └── base de datos pruebas
```

Una misma instalación de PostgreSQL puede tener varias bases de datos.

---

## 3. Jerarquía básica

Para comenzar, memoriza este mapa:

```text
Servidor PostgreSQL
└── Base de datos
    └── Schema
        └── Tabla
            ├── Columnas
            └── Filas
```

Ejemplo real:

```text
Servidor PostgreSQL
└── curso_postgresql
    └── public
        └── clientes
            ├── id_cliente
            ├── nombre
            └── correo
```

### Servidor
Es el proceso PostgreSQL que está ejecutándose en tu computadora, VPS o nube.

### Base de datos
Es un espacio separado para un sistema o proyecto.

Ejemplos:

```text
curso_postgresql
atacado
autorizacion
tienda_pruebas
```

### Schema
Es una forma de ordenar objetos dentro de una base de datos. Al comenzar usarás el schema `public`.

Una tabla puede escribirse de forma completa:

```sql
public.clientes
```

Como `public` suele estar en la ruta de búsqueda, normalmente bastará:

```sql
clientes
```

### Tabla
Es una estructura con columnas y filas, parecida a una hoja de cálculo pero con reglas, relaciones, permisos e índices.

---

## 4. Objetos que verás más adelante

| Objeto | Para qué sirve |
|---|---|
| Tabla | Guardar filas de datos |
| Vista | Guardar una consulta reutilizable |
| Índice | Acelerar ciertas búsquedas |
| Función | Reutilizar lógica que devuelve un valor o conjunto |
| Procedimiento | Ejecutar un proceso con `CALL` |
| Trigger | Ejecutar lógica automáticamente ante eventos |
| Role | Usuario/grupo con permisos |
| Schema | Agrupar objetos dentro de una base de datos |

No intentes dominar todos hoy. Los veremos en ese orden durante el repositorio.

---

## 5. Cliente vs servidor

PostgreSQL es el motor. pgAdmin, DBeaver y `psql` son clientes o herramientas para conectarte al motor.

```text
PostgreSQL = donde viven y se procesan los datos
pgAdmin    = interfaz gráfica para administrarlo
psql       = terminal oficial para escribir comandos
DBeaver    = cliente gráfico que sirve para varios motores
```

Una tabla no “vive dentro de pgAdmin”. pgAdmin solo te ayuda a verla y administrarla.

---

## 6. PostgreSQL no es solo tablas

PostgreSQL tiene tipos de datos más allá del texto y números. Más adelante estudiarás, por ejemplo:

```text
BOOLEAN    → true / false
UUID       → identificadores únicos
JSONB      → documentos JSON indexables
TIMESTAMP  → fecha y hora
ARRAY      → listas de valores
```

Por ahora trabajaremos con tipos simples y seguros.

---

## 7. Resumen

```text
PostgreSQL es el motor.
pgAdmin es un cliente visual.
Un servidor puede tener varias bases de datos.
Una base puede tener schemas.
Un schema tiene tablas y otros objetos.
```

## Preguntas de repaso

1. ¿Dónde se guardan realmente los datos: pgAdmin o PostgreSQL?
2. ¿Qué contiene una tabla?
3. ¿Qué es un schema?
4. ¿Cuál será nuestro schema inicial?
5. ¿Qué diferencia hay entre una base de datos y un servidor?
