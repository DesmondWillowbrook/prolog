byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

travel(X, Y) :- byCar(X, Y); byTrain(X, Y); byPlane(X, Y).
travel(X, Y) :- travel(X, Z), travel(Z, Y).

% Sample query:
% ?- travel(valmont,losAngeles,X).
go(X, Y) :- byCar(X, Y); byTrain(X, Y); byPlane(X, Y).

traceroute(Start, End, byPlane(Start, Middle, Path)) :- byPlane(Start, Middle), traceroute(Middle, End, Path).
traceroute(Start, End, byTrain(Start, Middle, Path)) :- byTrain(Start, Middle), traceroute(Middle, End, Path).
traceroute(Start, End, byCar(Start, Middle, Path)) :- byCar(Start, Middle), traceroute(Middle, End, Path).

traceroute(Start, End,  byPlane(Start, End)) :- byPlane(Start, End).
traceroute(Start, End,  byTrain(Start, End)) :- byTrain(Start, End).
traceroute(Start, End,  byCar(Start, End)) :- byCar(Start, End).

travel(Start, End, Rest) :-
	traceroute(Start, End, Rest).