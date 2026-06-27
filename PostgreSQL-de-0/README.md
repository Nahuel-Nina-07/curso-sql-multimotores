# PostgreSQL desde cero

Curso práctico y progresivo para aprender SQL con PostgreSQL, desde tablas y consultas hasta funciones, procedimientos, transacciones, seguridad y rendimiento.

## Cómo usar este repositorio

1. Ejecuta los módulos por orden numérico.
2. Lee los `.md` antes de ejecutar los `.sql` de la misma carpeta.
3. Trabaja sobre una base de práctica llamada `curso_postgresql`.
4. Nunca ejecutes `DROP`, `DELETE` o `TRUNCATE` sin leerlos primero.
5. En cada módulo intenta resolver el archivo de ejercicios antes de mirar los ejemplos previos.

## Reglas del curso

- Nombres en minúscula con `_`: `id_cliente`, `fecha_creacion`.
- Para dinero usa `NUMERIC`, no `REAL` ni `DOUBLE PRECISION`.
- Para claves técnicas de tablas usa `GENERATED ... AS IDENTITY` o UUID cuando tenga sentido.
- Las restricciones se ponen en la base de datos; no solo en el frontend.
- En scripts de práctica, los datos son ficticios.

## Orden obligatorio

`01-fundamentos` → `02-consultas-basicas` → `03-crud` → `04-diseno-y-relaciones` → `05-joins` → `06-funciones-agregadas-y-agrupacion` → `07-consultas-avanzadas` → `08-fechas-texto-y-datos-especiales` → `09-vistas-indices-y-rendimiento` → `10-transacciones-y-concurrencia` → `11-funciones-procedimientos-y-triggers` → `12-seguridad-roles-y-schemas` → `13-proyecto-tienda-postgresql` → `14-diferencias-entre-motores`.
