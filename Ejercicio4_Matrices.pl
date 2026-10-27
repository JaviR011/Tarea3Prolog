% Ejercicio 4. Suma elemento a elemento; exige dimensiones iguales.
sumamatriz([], [], []).
sumamatriz([FilaA|RestoA], [FilaB|RestoB], [FilaS|RestoS]) :-
    suma_filas(FilaA, FilaB, FilaS),
    sumamatriz(RestoA, RestoB, RestoS).

suma_filas([], [], []).
suma_filas([A|As], [B|Bs], [S|Ss]) :-
    S is A + B,
    suma_filas(As, Bs, Ss).
