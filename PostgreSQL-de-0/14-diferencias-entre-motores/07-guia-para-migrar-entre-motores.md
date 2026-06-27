# Guía para migrar entre motores

1. Inventaria tablas, constraints, índices, vistas, funciones, triggers y datos.
2. Mapea tipos: `BOOLEAN`, fecha/hora, UUID, JSON, dinero y autoincrementos.
3. Traduce SQL específico: `LIMIT/TOP`, concatenación, UPSERT, funciones de fecha y procedimientos.
4. Migra primero una copia de datos y valida conteos, nulls, claves y totales.
5. Ejecuta pruebas de aplicación y rendimiento.
6. Nunca apuntes la app de producción a la nueva base sin respaldo y plan de rollback.
