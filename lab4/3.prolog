sum(X,0):- X < 0, !.
sum(X,Y):- X mod 2 < 1, X1 is X-2, sum(X1,Y1), Y is Y1+X.
sum(X,Y):- X mod 2 > 0, X1 is X-2, sum(X1,Y1), Y is Y1+X.