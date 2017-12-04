// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№10.5
function res=threepl(A1,B1,C1,D1,A2,B2,C2,D2,A3,B3,C3,D3)
    R=[A1,B1,C1,D1;A2,B2,C2,D2;A3,B3,C3,D3];//матриця коефыцыентыв площин
    //константи для перевірки розташування площин
    k_1_2=(A1/A2 == B1/B2) && (B1/B2 == C1/C2) && (C1/C2 == D1/D2);
    k_2_3=(A2/A3 == B2/B3) && (B2/B3 == C2/C3) && (C2/C3 == D2/D3);
    k_1_3=(A1/A3 == B1/B3) && (B1/B3 == C1/C3) && (C1/C3 == D1/D3);
    //вычисляем ранг матрицы
    ra=rank(R);
    //визначення взаємного розташування площин
    if ra == 1 then
        res='Паралельні';
    elseif ra == 2 then
        res='Дві площини паралельні,а одна перетинає їх';
    elseif (ra == 3) && ~(b_1_2) && ~(b_1_3) && ~(b_2_3) then
        res='Три перетинаються в різних точках';
    elseif ra == 3 then
        res='Три перетинаються в одному місці';
    end
endfunction
