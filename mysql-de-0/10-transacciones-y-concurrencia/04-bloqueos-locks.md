# 04 — Bloqueos

InnoDB usa bloqueos para mantener consistencia. Mantén las transacciones cortas. Para reservar una fila antes de actualizarla usa `SELECT ... FOR UPDATE` dentro de una transacción.
