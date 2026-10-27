% Ejercicio 5. Funcion de Ackermann para enteros no negativos.
% Usar valores pequenos: crece extremadamente rapido.
ackermann(0, N, R) :-
    integer(N), N >= 0,
    R is N + 1.
ackermann(M, 0, R) :-
    integer(M), M > 0,
    M1 is M - 1,
    ackermann(M1, 1, R).
ackermann(M, N, R) :-
    integer(M), integer(N), M > 0, N > 0,
    N1 is N - 1,
    ackermann(M, N1, Intermedio),
    M1 is M - 1,
    ackermann(M1, Intermedio, R).
