// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№10.1
function fun=tochki(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4)
    clf();
    //розпишемо одну точку через три інші
    a=[x2-x1,y2-y1,z2-z1];
    b=[x3-x1,y3-y1,z3-z1];
    c=[x4-x1,y4-y1,z4-z1];
    //знаходимо векторний добуток
    res=det([a;b;c]);
    //якщо добуток дорівнює 0,то точки належать одній площині
    if res==0 then
        fun=%t;
    else
        fun=%f;
    end
    ///об'єдннуємо відповідні координати для побудови
    X=[x1,x2,x3,x4,x1];
    Y=[y1,y2,y3,y4,y1];
    Z=[z1,z2,z3,z4,z1];
    param3d(X,Y,Z);
endfunction
