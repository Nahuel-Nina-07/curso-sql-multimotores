/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

DROP TABLE IF EXISTS ventas.pagos CASCADE;
DROP TABLE IF EXISTS ventas.detalle_pedido CASCADE;
DROP TABLE IF EXISTS ventas.pedidos CASCADE;
DROP TABLE IF EXISTS ventas.clientes CASCADE;
DROP TABLE IF EXISTS catalogo.productos CASCADE;
DROP TABLE IF EXISTS catalogo.categorias CASCADE;

CREATE TABLE catalogo.categorias (
    id_categoria INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    activo BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE catalogo.productos (
    id_producto INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_categoria INTEGER NOT NULL REFERENCES catalogo.categorias(id_categoria),
    nombre VARCHAR(150) NOT NULL,
    sku VARCHAR(60) NOT NULL UNIQUE,
    precio NUMERIC(12,2) NOT NULL CHECK (precio > 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    activo BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE ventas.clientes (
    id_cliente INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    fecha_registro TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE ventas.pedidos (
    id_pedido INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_cliente INTEGER NOT NULL REFERENCES ventas.clientes(id_cliente),
    fecha TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(30) NOT NULL DEFAULT 'PENDIENTE'
);
CREATE TABLE ventas.detalle_pedido (
    id_detalle INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_pedido INTEGER NOT NULL REFERENCES ventas.pedidos(id_pedido) ON DELETE CASCADE,
    id_producto INTEGER NOT NULL REFERENCES catalogo.productos(id_producto),
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(12,2) NOT NULL CHECK (precio_unitario > 0)
);
CREATE TABLE ventas.pagos (
    id_pago INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_pedido INTEGER NOT NULL REFERENCES ventas.pedidos(id_pedido),
    monto NUMERIC(12,2) NOT NULL CHECK (monto > 0),
    metodo VARCHAR(30) NOT NULL,
    fecha TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
