/* PostgreSQL */
CREATE TABLE clientes_pg (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

/* SQL Server
CREATE TABLE clientes_sqlserver (
  id INT IDENTITY(1,1) PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);
*/

/* MySQL
CREATE TABLE clientes_mysql (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);
*/

/* SQLite
CREATE TABLE clientes_sqlite (
  id INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL
);
*/
