% Detecting love triangles

woman(jess).
woman(mary).
woman(becca).

man(gary).
man(larry).
man(hess).

loves(gary, jess).
loves(jess, larry).
loves(larry, mary).
loves(mary, hess).
loves(hess, becca).
loves(becca, gary).

jealous(X) :- loves(X, Y), loves(Y, _).