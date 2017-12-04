// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№9.4
function [res]=plot_complex(xstep,ystep,deg,n)
    result=[]
    for x=-10:xstep:10
        for y=-10:ystep:10
            //перевірка на умову завдання
            if modulo(round(abs(x+%i*y)^deg),n)==0 then
                //якщо true,то заносимо число в матрицю
                a=x+y*%i;
                result=[result,a];
            end
        end
    end
    //побудова точок з отриманої матриці(х-дійсна частина,y-уявна)
plot(real(result),imag(result),'ro')
endfunction
