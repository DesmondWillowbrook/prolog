combine2([X], [Y], [X, Y]).
combine2([X | Tail1], [Y | Tail2], [[X, Y], Tail3]) :- combine2(Tail1, Tail2, Tail3).