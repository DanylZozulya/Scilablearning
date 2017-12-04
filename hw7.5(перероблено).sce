// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 10.11.2017
//№7.5
//перша фукнкція обчислення a^e(mod n)
function y=modexp1(a,e,n)  
    y=1
    a=modulo(a,n)
    for i=1:1:e
        y=y*a
        y=modulo(y,n)
    end
endfunction
//друга функція обчислення a^e(mod n)
function y=modexp2(a,e,n)
    y=1
    //переведем степінь в двійкову систему
    e=dec2bin(e)
    e=strrev(e)
    a=modulo(a,n)
    //цикл для вибору парних степенів
    for i=1:1:length(e)
        if part(e,i)=='1'
            a1=a
            if i-1<>0
                //внутрішній цикл  для кінцевого обчислення  a^e(mod n)      
                for j=1:i-1
                    a1=modulo(a1^2,n)
                end 
            end
            y=y*a1
            y=modulo(y,n)
        end
    end
endfunction
