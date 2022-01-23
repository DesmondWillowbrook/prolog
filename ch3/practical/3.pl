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

% Sample query:
% ?- travel(valmont,losAngeles,X).
go(X, Y) :- byCar(X, Y); byTrain(X, Y); byPlane(X, Y).

travel(Start, End, go(Start, Middle, Path)) :- go(Start, Middle), travel(Middle, End, Path).
travel(Start, End, go(Start, End)) :- go(Start, End).