-- 08 — Tipos de datos
-- Curso MySQL desde cero | Ejecuta por orden.

USE curso_mysql;


DROP TABLE IF EXISTS tipos_datos_demo;
CREATE TABLE tipos_datos_demo (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entero INT,
  entero_grande BIGINT,
  precio DECIMAL(12,2),
  texto_corto VARCHAR(150),
  texto_largo TEXT,
  fecha DATE,
  hora TIME,
  fecha_hora DATETIME,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  activo BOOLEAN,
  configuracion JSON
) ENGINE=InnoDB;

INSERT INTO tipos_datos_demo (entero, entero_grande, precio, texto_corto, fecha, hora, fecha_hora, activo, configuracion)
VALUES (10, 9000000000, 199.90, 'Demo', '2026-06-27', '14:30:00', '2026-06-27 14:30:00', TRUE, JSON_OBJECT('color','azul'));
SELECT * FROM tipos_datos_demo;

-- Para dinero usa DECIMAL, no FLOAT/DOUBLE.
-- BOOLEAN en MySQL se representa normalmente como TINYINT(1).
