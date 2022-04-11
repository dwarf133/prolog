% Строим базу знаний
% Факты, представленные в процедуре student
% устанавливают соответствие студентов и их средних баллов
% student(Name, SrBal)
student('Ivanov', 4.5).
student('Pupkin', 3.0).
student('Vetrov', 4.3).
student('Petrov', 3.2).
student('Levchenko', 4.6).
student('Sidorov', 5.0).

% Составляем правило "Стипендия"
% Name - имя студента
% Результат вызова этого правила:
% 1. если параметром передать конкретное имя Prolog-система даст ответ
%    true если студент имеет стипендию или fail если не имеет.
% 2. если параметром передать переменную, то будет выведен список студентов,
%    которые имеют стипендию
stipendiya(Name) :- student(Name, SrBal), SrBal > 4.

% Определим еще одну пролог-процедуру company
% Эта процедура будет определять минимальный средний балл,
% необходимый студенту для работы в данной компании
% company(Name, MinSrBal)
company('Microsoft', 5.0).
company('Apple', 4.9).
company('IBM', 4.5).
company('IT-west', 4.0).
company('Vasya and Co',3.0).

% Составим правило "может ли студент работать в компании"
% Здесь тоже можно вводить конкретные значения для ответа "да-нет"
% либо переменные для получения списка компаний или студентов.
isAbleToWork(NameStudent, NameCompany) :-
                               student(NameStudent,SrBalStudent),
                               company(NameCompany,SrBalCompany),
                               SrBalStudent>=SrBalCompany.
