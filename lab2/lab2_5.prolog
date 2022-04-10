% Фамилия 	 Алгебра 	 Геометрия 	 Информатика

marks('Antonov', 5, 5, 5).
marks('Bobrov', 5, 3, 2).
marks('Vyatkin', 5, 5, 5).
marks('Grandfathers', 4, 4, 4).
marks('Emelyanova', 5, 5, 5).
marks('Moles', 2, 3, 3).
marks('Maryin', 5, 4, 5).
marks('Novikov', 2, 3, 2).
marks('Podlesny', 2, 3, 3).
marks('Polezhaev', 5, 5, 5).
marks('Sosnin', 4, 4, 4).

exelent(X) :- marks(X, Alg, Geom, Info), Alg = 5, Geom = 5, Info = 5.
bad(X) :- marks(X, Alg, Geom, Info), (Alg = 2; Geom = 2; Info = 2).
mathematics(X) :- marks(X, Alg, Geom, Info), (
                            (Alg = 5, Geom = 5);
                            (Alg = 4, Geom = 5);
                            (Alg = 5, Geom = 4);
                            (Alg = 4, Geom = 4)
                                ).

% Запросы:
%
% exelent('Novikov').
% exelent(X).
% bad(X).
% mathematics('Sosnin').