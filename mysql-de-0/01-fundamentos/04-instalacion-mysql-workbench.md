# 04 — Instalación de MySQL y Workbench

1. Instala MySQL Server y MySQL Workbench.
2. Durante la instalación guarda la contraseña de `root`.
3. Usa el puerto `3306` salvo que esté ocupado.
4. Abre Workbench y entra a tu conexión local.

Datos normales:

```text
Host: localhost o 127.0.0.1
Puerto: 3306
Usuario: root
```

Verifica la conexión:

```sql
SELECT VERSION();
SELECT CURRENT_USER();
SHOW DATABASES;
```

Para desarrollo real, crea luego un usuario de aplicación en el módulo 12.
