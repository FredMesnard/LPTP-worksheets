/* -----------------------------------------------

Consider the following Prolog program:

----------------------------------------------- */
man(odilon).
man(remy).
man(edouard).

woman(genevieve).
woman(pauline).
woman(melaine).

child(melaine,odilon).
child(melaine,genevieve).
child(pauline,odilon).
child(pauline,genevieve).
child(edouard,odilon).
child(edouard,genevieve).

father(X,Y) :- man(X), child(Y,X).

mother(X,Y) :- woman(X), child(Y,X).

brother_or_sister(X,Y) :- child(X,Z), child(Y,Z), X\==Y.

brother(X,Y) :- man(X), brother_or_sister(X,Y).

sister(X,Y) :- woman(X), brother_or_sister(X,Y).
/*-----------------------------------------------


State then prove the following properties:
- Odilon is a man
- Genevieve is a woman
- there exists a man
- there exists an entity which is not a woman
- man/1 terminates
- woman/1 terminates
- if man(x) succeeds then x est ground
- if woman(x) succeeds then y est ground
- if man(x) succeeds, then woman(x) fails
- if child(x,y) succeeds then x et y are ground
- if father(x,y) succeeds then x et y are ground
- if father(x,y) succeeds then man(x) succeeds
- if father(x,y) succeeds then child(y,x) succeeds
- if brother_or_sister(x,y) succeeds then x and y are ground
- if brother(x,y) succeeds then brother_ou_sister(x,y) succeeds
- if sister(x,y) succeeds then brother_ou_sister(x,y) succeeds
- if brother(x,y) succeeds ou sister(x,y) succeeds then brother_ou_sister(x,y) succeeds


*/
