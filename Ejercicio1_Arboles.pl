% Ejercicio 1. Arbol binario: arb(Izquierdo, Raiz, Derecho).
% El arbol vacio se representa mediante nil.

x_pert_arb(X, arb(_, Raiz, _)) :-
    X = Raiz.
x_pert_arb(X, arb(Izquierdo, _, _)) :-
    x_pert_arb(X, Izquierdo).
x_pert_arb(X, arb(_, _, Derecho)) :-
    x_pert_arb(X, Derecho).

nods_arb(nil, 0).
nods_arb(arb(Izquierdo, _, Derecho), N) :-
    nods_arb(Izquierdo, NI),
    nods_arb(Derecho, ND),
    N is NI + ND + 1.
