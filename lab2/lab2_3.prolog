pretty('Marry').
kind('Jhon').
manly('Jhon').
strong('Jhon').
rich('Somebody').

likedByMan(Female, Male) :- pretty(Female).
likedByWoman(Male, Female) :- likedByMan(Female, Male), kind(Male); kind(Male), strong(Male). 
abbleToBeLiked(X) :- likedByWoman(X, _).
happy(X) :- rich(X); abbleToBeLiked(X).

% Запросы: 
%
% happy('Jhon').
% abbleToBeLiked(X).