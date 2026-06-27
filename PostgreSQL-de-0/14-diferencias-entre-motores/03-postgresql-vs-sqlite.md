# PostgreSQL vs SQLite

SQLite es una biblioteca embebida: normalmente guarda toda la base en un archivo. PostgreSQL funciona como servidor de base de datos, con roles, conexiones concurrentes y administración separada.

| Tema | PostgreSQL | SQLite |
|---|---|---|
| Modelo | servidor | archivo embebido |
| Usuarios/roles | sí | no como servidor |
| Stored procedures | sí | no tradicionales |
| Concurrencia | alta, multiusuario | limitada para escrituras simultáneas |
| Caso típico | backend real, SaaS, empresa | móvil, desktop, pruebas, apps pequeñas |

SQLite sigue usando SQL, tablas, joins, constraints y transacciones, pero no reemplaza siempre a PostgreSQL.
