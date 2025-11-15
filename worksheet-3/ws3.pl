p.

q.

r :- p.
r :- q.

s :- p, q.

t.
t :- t.

% u.
u :- u.
u.

v :- p, q, s.

w :- x, u.

x :- fail.


a(zero).
a(s(X)) :- a(s(X)).

