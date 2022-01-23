swap12([X, Y | Rest1], [Y, X | Rest2]) :- identical(Rest1, Rest2).

identical([], []).
identical([H | T1], [H | T2]) :- identical(T1, T2).