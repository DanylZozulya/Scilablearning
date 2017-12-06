// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№8.1
a=input("a=")
fi=[-%pi/4:0.01:%pi/4] 
//розрахунок згідно формули
ro=sqrt(2*a^2*cos(2*fi))
//створення матриць з елементів для побудови
ro=[ro,-ro]
fi=[fi,fi]
scf(1) 
clf(1)  
polarplot(fi,ro)
