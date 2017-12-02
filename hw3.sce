
// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 30.09.2017
//
x1=input('x1=')
y1=input('y1=')
z1=input('z1=')
v=[x1;y1;z1]
A=[2 1 3;1 1 1;1 3 2];//Матриця з коефіціентів рівнянь//
b=[10;6;13];//Вектор вільних коефіціентів//
A1=A;A1(:,1)=b;
A2=A;A2(:,2)=b;
A3=A;A3(:,3)=b;
//A1,A2,A3 - допоміжні матриці//
D=det(A);
d1=det(A1);
d2=det(A2);
d3=det(A3);
//D,d1,d2,d3 - визначники//
x=d1/D;
y=d2/D;
z=d3/D;
disp(x);
disp(y);
disp(z);
n=[x;y;z];
P=A*n-b
P1=A*v-b;
//Перевірка//
if P==0 then
    disp('True');
else
    disp('False');
end
//Перевірка чи є заданий вектор розв`язком системи//
if P1==0 then
    disp('Заданий вектор є розв`язком системи');
else
    disp('Заданий вектор не є розв`язком системи');
end
