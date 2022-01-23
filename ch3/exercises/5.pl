% sample query:
% ?-  swap(tree(tree(leaf(1),  leaf(2)),  leaf(4)),T).
% T  =  tree(leaf(4),  tree(leaf(2),  leaf(1))).
% yes 

swap(leaf(X), leaf(X)).

swap(tree(X, leaf(Y)), tree(leaf(Y), Z)) :- swap(X, Z).
swap(tree(A, B), tree(X, Y)) :- swap(B, X), swap(A, Y).