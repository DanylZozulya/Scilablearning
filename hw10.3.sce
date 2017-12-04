// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№10.3
function theta=kut(A1,B1,C1,D1,A2,B2,C2,D2)
    //кут знаходимо за відповідною формулою
    fi=acos(A1*A2+B1*B2+C1*C2/(sqrt(A1^2+B1^2+C1^2)*sqrt(A2^2+B2^2+C2^2)))
    X1=linspace(-10,10,10);
    Y1=linspace(-10,10,10);
    Z1=[];
    //алгоритм аналогічний №10.2
    for i=1:length(X1)
        Z0=[];
        for j=1:length(Y1)
            z=(-A1*i-B1*j-D1)/C1;
            Z0=[[Z0],z];
        end
        Z1=[[Z1];Z0];
    end
    X2=linspace(-10,10,10);
    Y2=linspace(-10,10,10);
    Z2=[];
    for i=1:length(X2)
        Z0=[];
        for j=1:length(Y2)
            z=(-A2*i-B2*j-D2)/C2;
            Z0=[[Z0],z];
        end
        Z2=[[Z2];Z0];
    end
    disp(fi,'kut = ')
    plot3d(X1,Y1,Z1);
    plot3d(X2,Y2,Z2);
endfunction
