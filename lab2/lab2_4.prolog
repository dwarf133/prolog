cat('Muska').
cat('Strelka').
cat('Murka').
dog('Rex').
dog('Druzhok').
dog('Muhtar').
dog('Rex').
color('Muska', 'brown').
color('Strelka', 'black').
color('Murka', 'red').
color('Druzhok', 'red').
color('Muhtar', 'white').
color('Rex', 'spoted').

ownedByAnatoly(X) :- color(X, COLOR), (COLOR == 'black'; COLOR == 'brown').
ownedByNicolai(X) :- dog(X), color(X, COLOR), not(COLOR == 'white' ; ownedByAnatoly(X)).
hasFamilyList(X) :- ownedByAnatoly(X); ownedByNicolai(X).
ivanOwnedMurka(X) :- not(ownedByNicolai('Muska'); hasFamilyList('Muhtar')).
hasNoOwners(X) :- (cat(X); dog(X)), not(ownedByAnatoly(X); ownedByNicolai(X); X == 'Murka').

% Запросы:
%
% hasNoOwners(X).
