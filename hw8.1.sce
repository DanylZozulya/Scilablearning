// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//
a=input("a=")
phi=[-%pi/4:0.01:%pi/4]    
rho=sqrt(2*a^2*cos(2*phi))   //розрахунок формули
rho=[rho,-rho]         //створення однієї матриці з rho=-sqrt() i rho=sqrt(), щоб викликати polarplot один раз
phi=[phi,phi]          //матриця кутів phi має бути такого самого розміру, тому дублюємо її
scf(1)   //відкриття нового графічного вікна 
clf(1)   //очищення його, на всякий
polarplot(phi,rho)
