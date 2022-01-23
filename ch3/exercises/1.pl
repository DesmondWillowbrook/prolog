% http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse10
% Test queries:

% ?- descendant(duke, bob) 
% true

% ?- descendant(bob, aaron)
% false

child(bob, aaron).
child(cathy, bob).
child(duke, cathy).
child(elizabeth, duke).

descendant(X, Y) :- child(X, Y).
descendant(X, Y) :- child(X, Z), descendant(Z, Y).