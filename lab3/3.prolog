% В бутылке, стакане, кувшине и банке находятся молоко, лимонад, квас и вода.
% Известно, что вода и молоко не в бутылке, сосуд с лимонадом находится между кувшином и сосудом с квасом,
% в банке — не лимонад и не вода. Стакан находится около банки и сосуда с молоком.
% Как распределены эти жидкости по сосудам?


container(butylka).
container(stakan).
container(kuvshin).
container(banka).

liquid(moloko).
liquid(limonad).
liquid(kvas).
liquid(voda).

inside(C, L):-
    container(C),
    liquid(L),
        not((C = butylka, L = moloko)),
        not((C = butylka, L = voda)),
        not((C = banka, L = voda)),
        not((C = banka, L = limonad)),
        not((C = kuvshin, L = limonad)),
        not((C = kuvshin, L = kvas)),
        not((C = stakan, L = moloko)),
        not((C = banka, L = moloko)).

solve(C1, L1, C2, L2, C3, L3, C4, L4):-
    container(C1),
    container(C2),
    container(C3),
    container(C4),
    C1 \= C2,
    C1 \= C3,
    C1 \= C4,
    C2 \= C3,
    C2 \= C4,
    C3 \= C4,

    liquid(L1),
    liquid(L2),
    liquid(L3),
    liquid(L4),
    L1 \= L2,
    L1 \= L3,
    L1 \= L4,
    L2 \= L3,
    L2 \= L4,
    L3 \= L4,

    inside(C1, L1),
    inside(C2, L2),
    inside(C3, L3),
    inside(C4, L4), !.

% solve(butylka, L1, stakan, L2, kuvshin, L3, banka, L4).
