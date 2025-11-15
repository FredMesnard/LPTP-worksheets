nat(0).
nat(s(X)) :- nat(X).

add(0,Y,Y).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

/*
inf(0,s(X)).
inf(s(X),s(Y)) :- inf(X,Y).

sup(X,Y) :- inf(Y,X).

diff(X,Y) :- inf(X,Y).
diff(X,Y) :- sup(X,Y).

mul(0,Y,0).
mul(s(X),Y,Z) :- mul(X,Y,A), add(Y,A,Z).
*/