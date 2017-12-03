// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 10.11.2017
//№7.5

//перша фукнкція обчислення a^e(mod n)
function y1=modexp1(a,e,n)
    //використаємо функцію timer для порівняння швидкості обчислення
    timer();
    for i=i:e
        a=a*a;
        a=modulo(a,n);
    end
    y1=a;
    time=timer();
    disp(a);
    disp('time:',time)
endfunction
//друга функція обчислення a^e(mod n)
function y2=modexp2(a,e,n)
    timer();
    for i=i:e
        a=a^2;
        a=modulo(a,n);
    end
    y1=a;
    time=timer();
    disp(a);
    disp('time',time)
endfunction
