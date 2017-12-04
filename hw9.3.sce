// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№9.3
//створюємо 4 пусті матриці 
matrix1=[];
matrix2=[];
matrix3=[];
matrix4=[];

clf();
//створення та перебор усіх необхідних комплексних чисел
for x=-5:0.1:5
    for y=-5:0.1:5
        a=x+y*%i;
        b=1/a;//обернене число до а
        c=a^2;
        //відношення 1+а до 1-а
        d=(1+a)/(1-a);
        matrix1=[matrix1,a];
        matrix2=[matrix2,b];
        matrix3=[matrix3,c];
        matrix4=[matrix4,d];
    end
end
scf(0);
//побудова(х-дійсна частина,y-уявна частина)
plot(real(matrix1),imag(matrix1),'x');
scf(1);
plot(real(matrix2),imag(matrix2),'rx');
scf(2);
plot(real(matrix3),imag(matrix3),'gx');
scf(3)
plot(real(matrix4),imag(matrix4),'bx');
