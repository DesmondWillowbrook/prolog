combine1([X], [Y], [X, Y]).
combine1([X | Tail1], [Y | Tail2], [X, Y | Tail3]) :- combine1(Tail1, Tail2, Tail3).