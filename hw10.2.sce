// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№10.2
function d=point2andplain(x0,y0,z0,A,B,C,D)
    clf();
    //використаємо формулу відстані від точки до площини
    d=abs(A*x0+B*y0+C*z0)/sqrt(A^2+B^2+C^2);
    X=linspace(-10,10,10);
    Y=linspace(-10,10,10);
    Z=[];
    //заповнюємо матрицю Z
    for i=1:length(X)
        Z1=[];
        for j=1:length(Y)
            z=(-A*i-B*j-D)/C;
            Z1=[[Z1],z];
        end
        Z=[[Z];Z1];
    end
    //знаходимо точку перетину з площиною
    p=(-A*x0-B*y0-C*z0-D)/(A^2+B^2+C^2);
    x1=x0+A*p;
    y1=y0+B*p;
    z1=z0+C*p;
    //вектори для побудови 
    X2=[x0,x1];
    Y2=[y0,y1];
    Z2=[z0,z1];
    disp(x1,y1,z1);
    //побудова отриманого результату
    param3d(X2,Y2,Z2);
    plot3d(X,Y,Z);
endfunction
