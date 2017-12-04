// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 30.10.2017
//№3
//створення функції для переводу числа в іншу систему числення
function n = sysofchys(x,b)
    if x>0 then k=1
    else k=-1
    end
    x=abs(x)
    n=0
    i=0
    while x>=b
        n=n+modulo(x,b)*10^i
        x=int(x/b)
        i=i+1
    end
    if ~(x==0) then
          n=(n+x*10^i)
    end
    n=k*n
endfunction

//створення функції для перезапису числа
function x1=inverse(x)
    x1=0
    while x>0
        t=modulo(x,10)
        x1=x1*10+t
        x=int(x/10)
    end
endfunction
//перевірка чи є число паліндромом
format(20)
n=input('Введите n ')
b=input('Введите b ')
k=0
n=sysofchys(n,b)
if inverse(n)==n 
    disp('Число '+string(n)+' є паліндромом')
else
    disp("Число "+string(n)+" не є паліндромом")
end
//перевірка чисел від 1 до 10^6 на паліндром за базою 2 та 3 одночасно
for i=1:1:1000000 
      a1=int(sysofchys(i,2))
      a2=int(sysofchys(i,3))
      if(inverse(a1)==a1 & inverse(a2)==a2) 
           k=k+1
      end
end
disp(k)
