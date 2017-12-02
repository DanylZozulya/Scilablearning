// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 01.11.2017
//№6.3
//створення функції для переведення в параметричне рівняння прямої
function parametrichne(s)
//пошук символа х в рядку та присвоєння змінній числа до нього
x=strindex(s,"x")
if size(x)>0 then
    a=part(s,[1:x-1])
    a=evstr(a)
else
    a=0    //якщо х відсутній, то змінній присвоюється 0
    x=0
end
//той самий алгоритм для y
y=strindex(s,"y") 
if size(y)>0 then
    b=part(s,[x+1:y-1])
    b=evstr(b)
else
    b=0
end
z=strindex(s,"=")
//знаходження у рівнянні с
c=part(s,[z+1:length(s)])
c=evstr(c)
//обчислення необхідних x,y для різних видів рівняння
x0=1
//для рівняння виду ах=с
if b==0 then
    x0=c/a
    y0=0
end
//для рівняння виду by=с
if a==0 then
        y0=c/b
        x0=0
    else
        y0=(-a+c)/b  //для рівняння виду ax+by=c
end


if -b>=0 then   //якщо ((-b)>0 то  необхідно поставити "+" перед b
    disp("x="+string(x0)+"+"+string(-b)+"t") 
else
    disp("x="+string(x0)+string(-b)+"t")
end

if a>=0 then
    disp("y="+string(y0)+"+"+string(a)+"t") //якщо a>0 то  необхідно поставити "+" перед a
else
    disp("y="+string(y0)+string(a)+"t")
end
endfunction
