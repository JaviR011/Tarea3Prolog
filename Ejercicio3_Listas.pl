% Ejercicio 3. Conserva la primera aparicion de cada elemento.
% La comparacion == evita unificaciones accidentales.

contiene_identico(X, [Y|_]) :- X == Y, !.
contiene_identico(X, [_|Ys]) :- contiene_identico(X, Ys).

filtra(Xs, Ys) :- filtra_aux(Xs, [], Ys).
filtra_aux([], _, []).
filtra_aux([X|Xs], Vistos, Ys) :-
    ( contiene_identico(X, Vistos)
    -> filtra_aux(Xs, Vistos, Ys)
    ; Ys = [X|Resto], filtra_aux(Xs, [X|Vistos], Resto)
    ).

'Cuenta'(Xs, N) :- filtra(Xs, Ys), length(Ys, N).
% Alias en minusculas para facilitar consultas.
cuenta(Xs, N) :- 'Cuenta'(Xs, N).
