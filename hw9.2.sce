// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№8.2
//знаходження gcd за алгоритмом Евкліда(функція з минулих лабораторних)
function [Gcd]=gcdnew(a,b)
    k=0
    while %T
        c=modulo(a,b);
        a=b;
        b=c;
        if c==0 then
            Gcd=a
            break
        end
    end
endfunction
function [res]=koreniz1(n)
    for k=0:(n-1)
        //розрахунок k-го кореня
        z=cos((2*%pi*k)/n)+%i*sin((2*%pi*k)/n);
        a=real(z);//дійсна чатина
        b=imag(z);//уявна частина
        //перевірка на першість
        if  gcdnew(k,n)==1 then
            //якщо True,то графік червоний
            plot(a,b,'.r');
        else
            //якщо False,то графік зелений
            plot(a,b,'.g');
        end
    end
endfunction
