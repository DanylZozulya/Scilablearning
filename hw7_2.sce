// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 10.11.2017
//№7.2
//створення функції переведення числа в іншу систему числення
function n = perevod(x)
    a=2
    //перевірка знаку числа
    if x>0 then znak=1 
    else znak=-1
    end
    x=abs(x)
    n=0
    i=0
    //переведення числа 
    while x>=a
        n=n+modulo(x,a)*10^i
        x=int(x/a)
        i=i+1
    end
    //переведення остачі,якщо вона наявна
    if ~(x==0) then
          n=(n+x*10^i)
    end
    //присвоєння числу необхідного знаку
    n=znak*n
endfunction
