combine3([A], [B], [j(A, B)]).
combine3([A | T1], [B | T2], [j(A, B) | T3]) :- combine3(T1, T2, T3).