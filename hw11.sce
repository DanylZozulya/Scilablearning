// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 06.12.2017
//
clf()
//вводимо необхідні межі для множини мальдеброта
Max = [50,50,100]
Res = [300,600,600]
c_real = [-2.125:0.01:0.875]
c_imag = [-1.5:0.01:1.5]
c1 = []
c2 = []
c22 = []
c12 = []
n = 1
//цикл для перевірки всіх точок
for i = 1:length(c_real)
    t_pre = %f
    for j = 1:length(c_imag)
       t = %t
        z = 0 + 0*%i
        for k = 1:Max(n)
            z = z^2 + complex(c_real(i),c_imag(j))
            //розділяються у дві пари матриць
            //якщо умова True,то точки додаються до матриць c1,c2
            //якщо умова False,то точки додаються до матриць c12,c22
            if abs(z) > 1000
                t = %f
                c12 = [c12,c_real(i)] 
                c22 = [c22,c_imag(j)]
                break
            end
        end
        if t then
            c1 = [c1,c_real(i)]
            c2 = [c2,c_imag(j)]
    end
    end
   end
scf(n)
clf(n)
//побудова усіх необхідних точок
plot2d2(c1,c2,0.8)   
