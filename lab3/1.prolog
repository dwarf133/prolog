% Три подруги вышли в белом, зеленом и синем платьях и туфлях.
% Известно, что только у Ани цвета платья и туфлей совпадали.
% Ни туфли, ни платье Вали не были белыми. Наташа была в зеленых туфлях.
% Определить цвета платья и туфель на каждой из подруг.

name('Ann').
name('Valia').
name('Natasha').

dress('white').
dress('blue').
dress('green').

shoes('white').
shoes('green').
shoes('blue').

rule(Name, Dress, Shoes) :-
    name(Name), dress(Dress), shoes(Shoes),
    Name = 'Ann',
    Dress = Shoes.

rule(Name, Dress, Shoes) :-
    name(Name), dress(Dress), shoes(Shoes),
    Name = 'Valia',
    not(Dress =  Shoes), not(Dress = 'white'), not(Shoes = 'white').

rule(Name, Dress, Shoes) :-
    name(Name), dress(Dress), shoes(Shoes),
    Name = 'Natasha',
    not(Dress = Shoes), Shoes = 'green'.

ruleCommon(Name1, Name2, Name3) :-
    name(Name1),
    name(Name2),
    name(Name3),
    rule(Name1, Dress1, Shoes1),
    rule(Name2, Dress2, Shoes2),
    rule(Name3, Dress3, Shoes3),
    write(Name1),write(': '), write(Dress1), write(' '), write(Shoes1), nl,
    write(Name2),write(': '), write(Dress2), write(' '), write(Shoes2), nl,
    write(Name3),write(': '), write(Dress3), write(' '), write(Shoes3), nl, !. 


% ruleCommon('Ann', 'Valia', 'Natasha').
% Ann: white white
% Valia: blue green
% Natasha: white green
% true.


