quicksort([],[]).
quicksort([X|Y], Sorted) :-
   split(X, Y, Small, Big),
   quicksort(Small, SortedSmall),
   quicksort(Big, SortedBig),
   append(SortedSmall, [X|SortedBig], Sorted).


split(X, [],[],[]).
split(X, [Y|T], [Y|Small], Big) :- X > Y, split(X, T, Small, Big).
split(X, [Y|T], Small, [Y|Big]) :- split(X, T, Small, Big).
