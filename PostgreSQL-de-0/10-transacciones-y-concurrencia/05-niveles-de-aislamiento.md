# Niveles de aislamiento

El nivel habitual de PostgreSQL es `READ COMMITTED`: una consulta ve datos confirmados antes de comenzar esa consulta.

También existen `REPEATABLE READ` y `SERIALIZABLE`, con mayor aislamiento y más posibilidad de reintentos por conflictos. Usa niveles más estrictos solo si entiendes la regla de negocio y manejas errores de serialización.
