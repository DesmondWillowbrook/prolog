% Exercise 2.4 of http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse7

word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e). 

crossword(W1, W2, W3, W4, W5, W6) :-
	word(W1, _, H1V1, _, H1V2, _, H1V3, _),
	word(W2, _, H2V1, _, H2V2, _, H2V3, _),
	word(W3, _, H3V1, _, H3V2, _, H3V3, _),
	word(W4, _, H1V1, _, H2V1, _, H3V1, _),
	word(W5, _, H1V2, _, H2V2, _, H3V2, _),
	word(W6, _, H1V3, _, H2V3, _, H3V3, _),
	W1 \= W4, W2 \= W5, W3 \= W6.