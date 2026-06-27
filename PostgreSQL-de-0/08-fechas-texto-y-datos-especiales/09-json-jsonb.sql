/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS configuraciones_json;
CREATE TABLE configuraciones_json (
    id_configuracion INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    datos JSONB NOT NULL
);
INSERT INTO configuraciones_json (nombre, datos)
VALUES ('tema', '{"modo":"oscuro","fuente":"Montserrat","notificaciones":true}');

SELECT nombre, datos ->> 'modo' AS modo
FROM configuraciones_json
WHERE datos ->> 'modo' = 'oscuro';
