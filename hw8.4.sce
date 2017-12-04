// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№8.4
function d=distance(x0,y0,A,B,C)
    //підрахунок відстані між точкою та прямою
    d=abs(A*x0+B*y0+C)/sqrt(A^2+B^2);
    disp(d,'distance: ');
endfunction
