% sample query:
% ?- greater_than(succ(succ(succ(0))),succ(0)). 

greater_than(succ(X), X).
greater_than(succ(X), Y) :- greater_than(X, Y).