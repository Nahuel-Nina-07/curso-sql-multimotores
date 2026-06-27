# Cuándo usar índices

Crea índices cuando una columna aparece con frecuencia en filtros, joins o búsquedas y la tabla tiene suficiente tamaño para que el beneficio exista.

Evita índices innecesarios en tablas pequeñas o columnas con muy pocos valores distintos, por ejemplo `activo` aislado. Un índice compuesto puede ser más útil cuando la consulta usa `categoria` y `activo` juntos.

Mide con `EXPLAIN ANALYZE`, no solo por intuición.
