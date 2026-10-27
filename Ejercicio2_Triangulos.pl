% Ejercicio 2. Clasificacion por longitud de los lados.
triangulo(A, B, C) :-
    ( number(A), number(B), number(C),
      A > 0, B > 0, C > 0,
      A + B > C, A + C > B, B + C > A
    -> ( A =:= B, B =:= C
       -> writeln('Triángulo equilátero.')
       ; (A =:= B ; A =:= C ; B =:= C)
       -> writeln('Triángulo isósceles.')
       ; writeln('Triángulo escaleno.')
       )
    ; writeln('No es posible formar un triángulo.')
    ).
