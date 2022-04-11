%	Ник подарил Тому книгу. 
%	Мэри подарила Тому ручку. 
%	Рик подарил Мэри игрушку. 
%	Боб подарил Пэт игрушку. 
%
% Сформулируйте запросы, выясняющие: 
% a) Правда ли, что Рик подарил Мэри игрушку?
% b) Правда ли, что Ник подарил Тому игрушку? 
% с) Что подарили Тому на день рождения? 
% d) Кто подарил Пэт игрушку?
%
%   giftTo('Rick', 'Marry'), giftThat('Rick', 'Toy').
%   giftTo('Nick', 'Tom'), giftThat('Nick', 'Toy').
%   giftThat(Smbd, X), giftTo(Smbd, 'Tom').
%   giftTo(X, 'Pet'), giftThat(X, 'Toy').
%   giftTo(Y, X), giftThat(Y, 'Book')

giftTo('Nick', 'Tom').
giftTo('Marry', 'Tom').
giftTo('Rick', 'Marry').
giftTo('Bob', 'Pet').
giftThat('Nick', 'Book').
giftThat('Marry', 'Pen').
giftThat('Rick', 'Toy').
giftThat('Bob', 'Toy').

% 2. Задано дерево родственных отношений: 
%
%                 Marry                   Ivan
%                 |                        |
%             parrent                 parrent
%                 |------------------------|
%                 Fedor                   Stepan
%                 |
%             parrent
%                 |
%             |----------|
%            Olga      Tatiana
%           
% Запишите данные факты по правилам ПРОЛОГа и сформулируйте запросы, выясняющие: 
% a) Является ли Федор родителем Ольги? 
% b) Кто является родителем Татьяны? 
% c) Кто дети Ивана? 
% d) Кто является родителем родителя Ольги? 
% e) Кто внуки Ивана?
% f) Есть ли у Федора и Степана общий родитель? 
% g) Кто чей родитель? 
%
% parrent('Fedor', 'Olga').
% parrent(P, 'Tatiana').
% child(X, 'Ivan').
% granparant(X, 'Olga').
% granchild(X, 'Ivan').
% hasSameParrent('Fedor', 'Stepan').
% parrent(Parrent, Child).

parrent('Marry', 'Fedor').
parrent('Ivan', 'Fedor').
parrent('Marry', 'Stepan').
parrent('Ivan', 'Stepan').
parrent('Fedor', 'Olga').
parrent('Fedor', 'Tatiana').

child(Child, Parrent) :- parrent(Parrent, Child).
granparant(Grandparant, Grandson) :- parrent(Grandparant, X), parrent(X, Grandson).
granchild(Grandson, Grandparant) :- granparant(Grandparant, Grandson).
hasSameParrent(First, Second) :- parrent(X, First), parrent(X, Second).

% 3. Имеется база данных, содержащая факты вида: 
% 	любит(имя, продукт), 
% 	фрукты(продукт), 
% 	конфеты(продукт). 
%
% Составьте программу, определяющую: 
% a) всех, кто любит бананы; 
% b) кто любит и шоколад, и яблоки; 
% c) что любит Вова;
% d) что любят и Света, и Вова.
% Используя имеющиеся факты, составить новое правило люб_фрукты(Х) и определить всех, кто любит фрукты; 
% 
% like(X, 'Banana').
% like(X, 'Chockolate'), like(X, 'Apple').
% like('Vova', X).
% like('Vova', X), like('Sveta', X).

like('Diman', 'Coffee').
like('Diman', 'Banana').
like('Sveta', 'Chockolate').
like('Sveta', 'Beer').
like('Sveta', 'Apple').
like('Sveta', 'Mishka na servere').
like('Vova', 'Mishka na servere').
like('Vova', 'Banana').
like('Denis', 'Mishka na servere').
like('Denis', 'Apple').
like('Denis', 'Chockolate').
fruit('Banana').
fruit('Apple').
candy('Mishka na servere').
likeFruits(X) :- like(X, Y), fruit(Y).

% 4. Имеется база данных, содержащая факты вида: 
% 	играет(имя, спорт), 
% 	мужчина(имя), 
% 	женщина(имя). 
%
% Составьте программу, определяющую: 
% a) каким видом спорта увлекается Андрей; 
% b) всех, кто играет в волейбол; 
% c) каким видом спорта увлекаются и Ольга, и Саша; 
% d) кто увлекается и футболом, и волейболом. 
%
% Используя имеющиеся факты, составить новое правило волейбол_жен(Х) и определить всех женщин, играющих в волейбол. 
%
% play('Andrey', X).
% play(X, 'Voleyball').
% play('Olga', X), play('Sasha', X).
% play(X, 'Voleyball'), play(X, 'football').

play('Olga', 'Voleyball').
play('Nastia', 'Voleyball').
play('Andrey', 'Voleyball').
play('Sasha', 'Football').
play('Andrey', 'Voleyball').
male('Sasha').
male('Andrey').
female('Olga').
female('Nastia').
femVol(X) :- play(X, 'Voleyball'), female(X).