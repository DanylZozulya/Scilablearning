// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 10.11.2017
//№7.8
function y=paritybit(x);
    k=0;
    res=0;
    //переведем число у двійкову систему
    bin=dec2bin(x);
    //підраховуємо кількість 1 у числі
    for i=1:(length(bin))
        if part(bin,i)=='1' then
            k=k+1;
        end
        //для непарної кількості дописуємо біт парності
        if modulo(k,2)~=0 then
            res='1'+bin;
        end
    end
    y=res;
endfunction
