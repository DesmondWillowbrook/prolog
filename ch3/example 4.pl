numeral(0).
numeral(succ(X)) :- numeral(X).

add(0, Y, Y).
add(succ(X), Y, succ(Z)) :- add(X, Y, Z).
add(X, succ(Y), succ(Z)) :- add(X, Y, Z).