# Índices

Un índice es una estructura adicional que ayuda a encontrar filas sin revisar toda la tabla. Puede acelerar `WHERE`, `JOIN`, `ORDER BY` y algunas búsquedas, pero también consume espacio y hace más lentos `INSERT`, `UPDATE` y `DELETE` porque debe actualizarse.

Crea índices basándote en consultas reales y verifica con `EXPLAIN ANALYZE`; no indexes todas las columnas por costumbre.
