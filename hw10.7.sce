// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№10.7
function fi=kutmizplandtchk(x0,y0,z0,u1,u2,u3,A,B,C,D)
    //знаходимо кут за формулою
    fi=asin(abs(u1*A+u2*B+u3*C)/(sqrt(u1^2+u2^2+u3^2)*sqrt(A^2+B^2+C^2)))
    X1=linspace(-10,10,10);
    Y1=linspace(-10,10,10);
    Z1=[];
    //цикл аналогічний №10.2
    for i=1:length(X1)
        Z0=[];
        for j=1:length(Y1)
            z=(-A*i-B*j-D)/C;
            Z0=[[Z0],z];
        end
        Z1=[[Z1];Z0];
    end
    plot3d(X1,Y1,Z1);
    
    //обраховуємо параметр для визначення точки перетину
    p=-(A*x0+B*y0+C*z0+D)/(A*u1+B*u2+C*u3);
    //обчислюємо точку перетину
    x1=x0+u1*t;
    y1=y0+u2*t;
    z1=z0+u3*t;
    X2=[x0,x1];
    Y2=[y0,y1];
    Z2=[z0,z1];
    //будуємо отримані результати
    param3d(X2,Y2,Z2);
endfunction
