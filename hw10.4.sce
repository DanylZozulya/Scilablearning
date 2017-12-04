// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№10.4
function res=twopl(A1,B1,C1,D1,A2,B2,C2,D2)
    //константи необхідні для вирішення задачі
    k1=A1/A2;
    k2=B1/B2;
    k3=C1/C2;
    k4=D1/D2;
    //розглядаємо можливі варіанти розташування
    if k1 == k2 == k3 == k4 then
        res='Належать одній поверхні';
    elseif (k1 == k2 == k3) && (k1~=k4) then
        res='Паралельні';
    elseif (k1~=k2) || (k2~=k3) || (k1~=k3) then
        res='Перетинаються';
    end
endfunction
