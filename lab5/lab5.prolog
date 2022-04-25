% 1 - длина списка
len([], 0).
len(A, 1) :- not(compound(A)).
len([X|T], L):-
    len(T, L1),    
    len(X, L2),
    L is L1 + L2, !.

% 2 - принадлежность списку
member(X, [X| _]).
member(X, [H|T]) :- (member(X, T); (compound(H), member(X, H))), !.

% 3 - конкатенация списка
append_list([], L2, L2).    
append_list([X | L1], L2, [X | L3]) :- append_list(L1, L2, L3).

% 4 - реверс списка

deep_reverse(A, A):- not(compound(A)).
deep_reverse([], []).
deep_reverse([X|L1], L2):- deep_reverse(L1, L3), deep_reverse(X, X1), append_list(L3, [X1], L2).

classic_reverse([], []).
classic_reverse([X|L1], L2):- classic_reverse(L1, L3), append_list(L3, [X], L2).

% 5 - проверка на палиндром

check_palindrom(A):- classic_reverse(A, R), A == R.

% 6 - получение элемента по индексу

get_by_index(I, _, _) :- I < 0, !, write("Index out of range!"), nl, fail.
get_by_index(0, [H|_], H) :- !.
get_by_index(I, [_|T], X) :- I1 is I - 1, get_by_index(I1, T, X).

% 7 - удалить все вхождения элементов

delete(_, [], []).
delete(X, [X|L], L1):- delete(X, L, L1).
delete(X, [Y|L], [Y|L1]):- not(compound(Y)), delete(X, L, L1).
delete(X, [Y|L], [L2|L1]):- compound(Y), delete(X, Y, L2), delete(X, L, L1).
