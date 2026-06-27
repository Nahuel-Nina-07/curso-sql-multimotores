/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

/* Patrón conceptual para una venta:
BEGIN;
1) Bloquear/consultar stock.
2) Crear pedido.
3) Insertar detalle.
4) Descontar stock.
5) COMMIT.
Si cualquiera falla: ROLLBACK.
*/
