# Bloqueos (locks)

PostgreSQL usa bloqueos para evitar inconsistencias cuando varias transacciones trabajan al mismo tiempo. Un `UPDATE` bloquea la fila modificada hasta que termine la transacción.

Para procesos sensibles como descontar stock, una técnica es consultar la fila con `SELECT ... FOR UPDATE` dentro de una transacción. Así otra transacción no puede modificar esa misma fila hasta que liberes el bloqueo mediante `COMMIT` o `ROLLBACK`.

Mantén transacciones cortas: no abras una transacción y luego esperes interacción del usuario.
