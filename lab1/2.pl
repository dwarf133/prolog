% 1) Построить базу данных «Важнейшие события Древнего Мира» на основе установленных фактов,
% произошедших с 31 по 6 век до нашей эры. Каждый факт приводить в виде событие(Х,У,Z),
% где X — название государства, где произошло событие, У — в каком веке произошло событие,
% Z — какое произошло событие.
%
% В 31-м веке до нашей эры возникли первые города-государства. 
% Единое государство в Египте образовалось в 30 веке до нашей эры.
% В 27 веке до нашей эры в Индии появились первые древнейшие города,
% а в Египте построена пирамида Хеопса. Первые греческие государства появились
% в 18 веке до нашей эры. В этом же веке в Египте произошло крупное восстание бедняков и рабов.
% В 15 веке до нашей эры появились первые государства в Китае. Тутмос III правил в Египте в 15 веке
% до нашей эры. Греция вела троянскую войну в 13 веке до нашей эры. 
% Вторжение борийских племен в Грецию произошло в 11 веке до нашей эры. 
% В 8 веке до нашей эры был основан город Рим. Олимпийские игры стали проводиться в Греции 
% в 8 веке до нашей эры. В 6 веке до нашей эры в Риме была установлена республика, 
% а в Греции произошли реформы Солона. В этом же веке персы взяли Вавилон в Междуречье 
% и завоевали Египет.

moment('Egypt', 30, 'Union Egypt founded').
moment('India', 27, 'Created').
moment('Egypt', 27, 'Heops piramid built').
moment('Greek', 18, 'Created').
moment('Egypt', 18, 'Greate rebel of poor and slaves').
moment('China', 18, 'Created').
moment('Egypt', 15, 'Tutmos III reined').
moment('Greek', 13, 'Trojan war').
moment('Greek', 11, 'Boriean invansion').
moment('Rome', 8, 'Created').
moment('Greek', 8, 'First olimpian games').

