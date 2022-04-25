fact(0,1) :- !.
fact(1,1) :- !.
fact(X,Y):- X mod 2 > 0,  X1 is X-2, fact(X1,Y1), Y is Y1*X.
fact(X,Y):- X mod 2 < 1,  X1 is X-2, fact(X1,Y1), Y is Y1*X.
