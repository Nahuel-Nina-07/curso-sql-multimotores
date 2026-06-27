/*
Curso PostgreSQL desde cero
Prerrequisito: ejecuta primero el módulo 01-fundamentos.
Este archivo se puede ejecutar varias veces; revisa DROP/INSERT antes de usarlo en una base real.
*/

/* Reglas comunes:
ON DELETE RESTRICT: impide borrar el padre si hay hijos.
ON DELETE CASCADE: borra hijos al borrar el padre.
ON DELETE SET NULL: conserva hijo, deja FK en NULL.

Ejemplo práctico: perfiles_cliente usa CASCADE porque un perfil no tiene sentido sin cliente.
En pedidos reales suele preferirse RESTRICT para no borrar historial por accidente.
*/
