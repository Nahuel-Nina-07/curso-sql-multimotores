# PL/pgSQL

PL/pgSQL es el lenguaje procedural común de PostgreSQL. Permite variables, condiciones, ciclos, manejo de excepciones y lógica dentro de funciones, procedimientos y triggers.

- Una **función** se crea con `CREATE FUNCTION` y normalmente devuelve un valor o tabla; se puede usar en `SELECT`.
- Un **procedimiento** se crea con `CREATE PROCEDURE` y se invoca con `CALL`; se usa para ejecutar procesos.
- Un **trigger** responde automáticamente a eventos como `INSERT`, `UPDATE` o `DELETE`.

No coloques toda la lógica de tu aplicación en la base sin razón. Úsalo para reglas de datos, auditoría, procesos cercanos a los datos o tareas que deben cumplirse sin importar qué cliente modifica la base.
