// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№10.8
function fun=ro(x0,y0,z0,x1,y1,z1,u1,u2,u3)
    //розраховуємо параметр
    t=(u1*(x0-x1)+u2*(y0-y1)+u3*(z0-z1))/(u1^2+u2^2+u3^2);
    //знаходимо точку перетину за допомогою параметра
    x=x1+u1*t;
    y=y1+u2*t;
    z=z1+u3*t;
    fun=sqrt((x-x0)^2+(y-y0)^2+(z-z0)^2)
endfunction
