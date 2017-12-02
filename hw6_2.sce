// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 01.11.2017
//№6.2
function s=mishanuy_dobutok(x,y,z)
//обчислення векторого добутку як у минулому завданні
i=[1,0,0]
j=[0,1,0]
k=[0,0,1]
i1=[x(2),x(3);y(2),y(3)]
j1=[x(1),x(3);y(1),y(3)]
k1=[x(1),x(2);y(1),y(2)]
x1=i*detr(i1)-j*detr(j1)+k*detr(k1)
//обчислення мішаного добутку
y1=x1.*z 
s=y1(1)+y1(2)+y1(3)
//перевірка на компланарність(чи дорівнюєе мішаний добуток 0)
if s==0 then 
    disp("Вектори компланарні")
else
    disp("Вектори не компланарні")
end
endfunction
pause
//перевірка чи належать 4 точки площині
function tchk=(A,B,C,D)
//обчислення координат вектора АВ,АС,AD
x=B-A
y=C-A
z=D-A
//перевірка значення мішаного добутку для заданих функцій
if mishanuy_dobutok==0 then
    disp("точки лежать в одній площині")
else
    disp("точки не лежать в одній площині")
end
endfunction
