# 03 — Conceptos de base de datos

## Tabla, fila y columna

Una tabla representa una entidad: `clientes`, `productos` o `pedidos`.

| id_cliente | nombre | correo |
|---:|---|---|
| 1 | Ana | ana@correo.com |

- **Fila/registro:** una unidad completa, por ejemplo Ana.
- **Columna/campo:** una característica, por ejemplo `correo`.

## Claves

- **PRIMARY KEY:** identifica cada fila sin repetirse.
- **FOREIGN KEY:** conecta una tabla con otra.
- **UNIQUE:** evita duplicados, por ejemplo en un correo.

## Relaciones

```text
Uno a uno: usuario — perfil
Uno a muchos: cliente — pedidos
Muchos a muchos: pedidos — productos, por medio de detalle_pedido
```

## NULL

`NULL` significa “valor desconocido/no registrado”. No es `0`, `FALSE` ni `''`.

```sql
WHERE telefono IS NULL;
```
