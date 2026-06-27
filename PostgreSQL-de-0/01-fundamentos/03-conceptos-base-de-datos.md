# Clase 03 — Conceptos de base de datos

## Objetivo
Comprender los conceptos que usarás en todas las clases: tabla, fila, columna, clave primaria, clave foránea, relación, `NULL` y constraint.

---

## 1. Tabla, columna y fila

Observa esta tabla conceptual llamada `clientes`:

| id_cliente | nombre | correo | activo |
|---:|---|---|---|
| 1 | Juan | juan@email.com | true |
| 2 | María | maria@email.com | true |
| 3 | Luis | luis@email.com | false |

### Tabla
La estructura completa: `clientes`.

### Columna
Una característica de cada registro:

```text
id_cliente
nombre
correo
activo
```

### Fila o registro
Una persona completa dentro de la tabla:

```text
1 | Juan | juan@email.com | true
```

---

## 2. Tipos de datos

Cada columna debe indicar qué clase de información admite.

```sql
nombre VARCHAR(100)
precio NUMERIC(12, 2)
activo BOOLEAN
fecha_registro TIMESTAMP
```

Esto evita guardar errores como:

```text
precio = "hola"
activo = "quizás"
fecha_registro = "azul"
```

---

## 3. Clave primaria

Una clave primaria identifica una fila de manera única.

```sql
id_cliente INTEGER PRIMARY KEY
```

Propiedades:

- no se repite;
- no puede ser `NULL`;
- identifica exactamente una fila.

Ejemplo:

| id_cliente | nombre |
|---:|---|
| 1 | Juan |
| 2 | María |

No debe existir otro cliente con `id_cliente = 1`.

---

## 4. Clave foránea

Una clave foránea conecta una tabla con otra.

Ejemplo:

```text
clientes
└── id_cliente

pedidos
└── id_cliente
```

Si un pedido pertenece a un cliente, la tabla `pedidos` tendrá una columna que apunta al cliente:

```sql
id_cliente INTEGER REFERENCES clientes(id_cliente)
```

Esto ayuda a evitar pedidos relacionados con clientes inexistentes.

---

## 5. Relaciones

### Uno a muchos

Un cliente puede tener muchos pedidos.

```text
Cliente 1 ─── Pedido 101
          ├── Pedido 102
          └── Pedido 103
```

La clave foránea vive del lado “muchos”:

```text
clientes.id_cliente
pedidos.id_cliente
```

### Muchos a muchos

Un pedido puede tener muchos productos y un producto puede aparecer en muchos pedidos.

No conectamos `pedidos` directamente con `productos`; creamos una tabla intermedia:

```text
pedidos ── detalle_pedido ── productos
```

Verás esta relación en el módulo 04.

---

## 6. NULL no es vacío ni cero

`NULL` significa que el valor no existe, no se conoce o no fue proporcionado.

```text
telefono = NULL  → no tenemos teléfono registrado
telefono = ''    → texto vacío
stock = 0        → sabemos que el stock es cero
```

Este detalle es muy importante.

Por eso para buscar valores desconocidos se usa:

```sql
WHERE telefono IS NULL
```

Y no:

```sql
WHERE telefono = NULL
```

---

## 7. Constraints: reglas de integridad

Un constraint es una regla que PostgreSQL debe hacer cumplir.

| Regla | Ejemplo | Significado |
|---|---|---|
| `PRIMARY KEY` | `id_cliente` | identifica de forma única |
| `NOT NULL` | `nombre` | obligatorio |
| `UNIQUE` | `correo` | no se repite |
| `CHECK` | `precio > 0` | valida una condición |
| `DEFAULT` | `activo DEFAULT TRUE` | valor automático |
| `FOREIGN KEY` | `id_cliente REFERENCES clientes` | relación válida |

La base de datos no debe confiar solo en el frontend. Aunque Angular valide un formulario, la base de datos debe conservar sus propias reglas.

---

## 8. Modelo de una tienda

Durante el curso usaremos el ejemplo de una tienda.

```text
clientes
categorias
productos
pedidos
detalle_pedido
```

Relaciones principales:

```text
categorias 1 ─── N productos
clientes   1 ─── N pedidos
pedidos    N ─── N productos
```

La última relación se resuelve con `detalle_pedido`.

---

## 9. Normalización, explicado de forma simple

Normalizar significa evitar repeticiones innecesarias y separar información según su responsabilidad.

Ejemplo malo:

| pedido | cliente_nombre | cliente_correo | producto_1 | producto_2 |
|---|---|---|---|---|

Problemas: los datos del cliente se repiten y no sabes cuántos productos máximos habrá.

Mejor:

```text
clientes
pedidos
productos
detalle_pedido
```

Cada dato se guarda en el lugar adecuado.

---

## 10. Resumen

```text
Tabla    = colección de registros.
Columna  = una característica.
Fila     = un registro.
PK       = identifica una fila.
FK       = conecta tablas.
NULL     = valor desconocido/ausente.
Constraint = regla que protege los datos.
```

## Preguntas de repaso

1. ¿Qué diferencia hay entre una fila y una columna?
2. ¿Qué hace una clave primaria?
3. ¿Dónde se pone la clave foránea en una relación uno a muchos?
4. ¿`NULL` es igual a texto vacío?
5. ¿Para qué sirve `NOT NULL`?
