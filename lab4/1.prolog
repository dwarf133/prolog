sum(0,0).
sum(X,Y):- X1 is X-1, sum(X1,Y1), Y is X+Y1.
