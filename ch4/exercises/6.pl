twice([], []).
twice([X | Tail1], [X, X | Tail2]) :- twice(Tail1, Tail2).