/*
Clase 05 — Crear la base de datos del curso

IMPORTANTE:
1. Ejecuta este archivo conectado a la base de mantenimiento llamada "postgres".
2. NO puedes ejecutar CREATE DATABASE desde dentro de la misma base
   que estás intentando crear.
3. Después de ejecutar este script, conecta pgAdmin a "curso_postgresql".
*/

-- Crear la base de datos del curso.
CREATE DATABASE curso_postgresql;

-- Verificar que existe.
-- Ejecuta esta consulta desde la base "postgres".
SELECT datname
FROM pg_database
WHERE datname = 'curso_postgresql';

/*
Si ejecutas CREATE DATABASE por segunda vez, PostgreSQL mostrará un error:
database "curso_postgresql" already exists

Eso no significa que la base esté dañada. Solo significa que ya existe.

Para este curso NO borres la base sin entender qué hace DROP DATABASE.

Referencia para más adelante, NO ejecutar ahora:

DROP DATABASE curso_postgresql;

Ese comando elimina la base completa y todos sus objetos.
*/
