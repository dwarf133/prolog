% Название, Длина, Годовой сток, Площадь бассейна, Истоки, Куда впадает

river('Amur', 4416, 350, 1855, 'Apple Ridge', 'Tatar Strait').
river('Lena', 4400, 488, 2490, 'Baikal ridge', 'Laptev Sea').
river('Ob', 4070, 400, 2990, 'Altai Foothills', 'Kara Sea').
river('Irtysh', 4248, 323, 1643, 'China', 'Ob').
river('Yenisei', 3487, 600, 2580, 'East Sayan', 'Kara Sea').
river('Volga', 3530, 255, 1360, 'Valdai Upland', 'Caspian Sea').
river('Kolyma', 2129, 44, 643, 'Chersky Ridge', 'East Siberian Sea').
river('Ural', 2428, 54, 231, 'South Ural', 'Caspian Sea').
river('Don', 2200, 45, 504, 'Central Russian upland', 'Sea of Azov').
river('Kama', 1805, 130, 507, 'Upper Kama upland', 'Volga').
river('Pechora', 1809, 130, 322, 'Northern Urals', 'Barents Sea').
river('Angara', 1779, 62, 1039, 'Baikal', 'Yenisei').
river('Selenga', 1024, 14, 447, 'Mongolia', 'Baikal').
river('Kuban', 870, 11, 58, 'Caucasus', 'Sea of Azov').
river('Neva', 74, 281, 'Lake Ladoga', 'Baltic Sea').

toAzovSea(X) :- river(X, _1, _2, _3, _4, 'Sea of Azov').
toCaspianSea(X) :- river(X, _1, _2, _3, _4, 'Caspian Sea').
fromValdaiUpland(X) :- river(X, _1, _2, _3, 'Valdai Upland', _4).
shorterThenKama(X) :- river(X, Length, _, _, _, _), river('Kama', KAMA_LENGTH, _, _, _, _), Length < KAMA_LENGTH.
longerThenIrtysh(X) :- river(X, Length, _, _, _, _), river('Irtysh', IRTYSH_LENGTH, _, _, _, _), Length > IRTYSH_LENGTH.

% Запросы:
% 
% toAzovSea(X).
% toCaspianSea(X).
% fromValdaiUpland(X).
% shorterThenKama(X).
% longerThenIrtysh(X).
% river('Ural', Length, Annual_flow, Basin_area, Sources, Where_it_flows_into).
