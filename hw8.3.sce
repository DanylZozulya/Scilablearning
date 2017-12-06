// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№8.3
function a=plotfortwolines(A1,B1,C1,A2,B2,C2)
    x=[-10:00.1:10];
    //рівняння прямих
    y1=(-A1/B1)*x+(-C1/B1);
    y2=(-A2/B2)*x+(-C2/B2);
    //побудова графіків
    plot(x,y1);
    plot(x,y2,'r');
    //перевірка на паралельність
    if A1/A2==B1/B2 then
        ugl=0;
        disp('lines are parallel')
        disp(ugl,'ugl=');
    else
        //знаходження точки перетину
        x0=((-C2/B2)-(-C1/B1))/((-A1/B1)-(-A2/B2));
        y0=(-A1/B1)*x0+(-C1/B1);
        //побудова точки перетину
        plot(x0,y0,'.b')
        //знаходження кута перетину
        ugl=acos((A1*A2+B1*B2)/sqrt((A1^2+B1^2)*(A2^2+B2^2)))
        disp(ugl,'ugl=');
    end
    a=''
endfunction
