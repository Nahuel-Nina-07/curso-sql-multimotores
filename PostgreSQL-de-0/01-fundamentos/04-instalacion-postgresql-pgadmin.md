# Clase 04 — Instalación de PostgreSQL y pgAdmin

## Objetivo
Instalar PostgreSQL, abrir pgAdmin y comprobar que puedes conectarte al servidor local.

---

## 1. Qué instalarás

Para este curso instalarás normalmente:

```text
PostgreSQL Server  → el motor de base de datos.
pgAdmin            → interfaz gráfica para administrar PostgreSQL.
psql               → consola de comandos de PostgreSQL.
```

En Windows, el instalador habitual incluye PostgreSQL Server y pgAdmin.

---

## 2. Instalación en Windows

1. Entra al sitio oficial de descargas de PostgreSQL.
2. Elige **Windows**.
3. Descarga el instalador recomendado para Windows.
4. Ejecuta el instalador.
5. Mantén seleccionados estos componentes:

```text
PostgreSQL Server
pgAdmin 4
Command Line Tools
```

6. Durante la instalación te pedirá una contraseña para el usuario administrador `postgres`.

### Contraseña de `postgres`

Guárdala en un lugar seguro. La necesitarás para conectarte localmente.

Ejemplo de datos iniciales:

```text
Host:     localhost
Port:     5432
User:     postgres
Password: la contraseña que definiste
```

No publiques esa contraseña en GitHub ni la subas a un repositorio.

---

## 3. Puerto 5432

PostgreSQL suele usar el puerto:

```text
5432
```

Un puerto es como una puerta de comunicación de un programa.

Cuando pgAdmin se conecta localmente, normalmente lo hace así:

```text
pgAdmin → localhost:5432 → PostgreSQL
```

Si el puerto ya está ocupado, puedes configurar otro durante la instalación. Para aprender, intenta usar el predeterminado si está disponible.

---

## 4. Abrir pgAdmin

Después de instalar:

1. Abre **pgAdmin 4**.
2. En la parte izquierda busca:

```text
Servers
└── PostgreSQL
```

3. Haz clic sobre el servidor.
4. Ingresa la contraseña del usuario `postgres`.

Si conecta correctamente, podrás expandir:

```text
Servers
└── PostgreSQL
    ├── Databases
    ├── Login/Group Roles
    └── Tablespaces
```

---

## 5. Abrir Query Tool

Para escribir SQL:

1. Expande `Databases`.
2. Selecciona una base de datos, por ejemplo `postgres`.
3. Clic derecho.
4. Elige **Query Tool**.

En la ventana de consultas escribe:

```sql
SELECT version();
```

Ejecuta con el botón de play o con la tecla indicada por pgAdmin.

Si ves información de versión de PostgreSQL, la instalación y conexión funcionan.

---

## 6. Verificar el usuario actual y la base actual

Ejecuta:

```sql
SELECT current_user;
SELECT current_database();
```

Normalmente al inicio verás algo parecido a:

```text
current_user      → postgres
current_database  → postgres
```

---

## 7. Problemas comunes

### Error: conexión rechazada

Posibles causas:

- el servicio PostgreSQL no está iniciado;
- elegiste un puerto diferente;
- el host no es correcto;
- el firewall está bloqueando una conexión remota.

Para una instalación local, revisa que el servicio de PostgreSQL esté iniciado desde Windows Services.

### Error: contraseña incorrecta

No es un problema de SQL. La contraseña configurada para el usuario `postgres` no coincide con la que escribiste.

No pruebes combinaciones muchas veces. Busca donde guardaste la contraseña o restablécela siguiendo el procedimiento adecuado para tu instalación.

### No aparece el servidor en pgAdmin

Puedes registrar una conexión manualmente:

```text
Register → Server
```

Datos típicos:

```text
Name:     PostgreSQL local
Host:     localhost
Port:     5432
Username: postgres
```

---

## 8. Alternativa con Docker

Más adelante puedes ejecutar PostgreSQL con Docker. Para comenzar no es obligatorio.

Ejemplo de referencia:

```bash
docker run --name postgres-curso \
  -e POSTGRES_PASSWORD=tu_clave_segura \
  -e POSTGRES_DB=curso_postgresql \
  -p 5432:5432 \
  -d postgres
```

No ejecutes este comando si ya instalaste PostgreSQL local usando el puerto `5432`, porque dos servicios no pueden usar el mismo puerto al mismo tiempo.

---

## 9. Checklist

Antes de pasar a la siguiente clase confirma:

- [ ] PostgreSQL está instalado.
- [ ] pgAdmin abre.
- [ ] Puedes conectarte con el usuario `postgres`.
- [ ] `SELECT version();` funciona.
- [ ] `SELECT current_user;` funciona.
- [ ] Sabes dónde guardaste tu contraseña.

## Referencia oficial

La página oficial de descargas ofrece paquetes e instaladores para distintos sistemas. En Windows, el instalador incluye el servidor PostgreSQL, pgAdmin y herramientas de línea de comandos. Consulta la documentación oficial desde la web de PostgreSQL.
