// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 30.10.2017
//№1.1
function y=chislferma(n,a)
    y2=a^(n-1)-1
    y2=modulo(y2,n)       //умова псевдопростого числа
    if y2==0 then
        y=%t
    else y=%f
    end
endfunction
//
//№1.2
k=0
for i=1:1:10^5
    y=chisla_Ferma(i,2)     //перевірка всіх чисел до 10^6 на псевдопростоту
    disp(y)
    if y
        k=k+1
    end    
end
//
//№1.3
kol=10^4
//створення матриці з довільних випадкових чисел від 1 до 10^4
rand_matrix=rand(1,kol)
rand_matrix=rand_matrix*(kol/10)
rand_matrix=int(rand_matrix)
disp(rand_matrix)
pause

p_primes=primes(kol/10)
size_primes=size(p_primes)
N=1
pause
//створення матриці з трьох випадкових баз
rand_base_a=rand(1,3)    /
rand_base_a=rand_base_a*10
rand_base_a=round(rand_base_a)

k1=0
k2=0
k3=0
k=0
kilkist=0

disp(rand_base_a)
pause
for i=1:1:kol
    if modulo(i,100)==0
        disp(i)
    end  
      //перевірка числа за трьома,створеними раніше, базами та обчислення кількості необхідних чисел
    y1_chisla=chisla_Ferma(rand_matrix(i),rand_base_a(1))
    y2_chisla=chisla_Ferma(rand_matrix(i),rand_base_a(2))
    y3_chisla=chisla_Ferma(rand_matrix(i),rand_base_a(3))
    if y1_chisla then    
        k1=k1+1
    end    
    if y2_chisla then
        k2=k2+1
    end    
    if y3_chisla then
        k3=k3+1
    end
    
    //використано код з лаб№4(перевірка чи ділиться число на 2,3,5,7,11,13,17 та перевірка чи є вони простими)
    x1=modulo(rand_matrix(i),2)
    x2=modulo(rand_matrix(i),3)
    x3=modulo(rand_matrix(i),5)
    x4=modulo(rand_matrix(i),7)
    x5=modulo(rand_matrix(i),11)
    x6=modulo(rand_matrix(i),13)
    x7=modulo(rand_matrix(i),17)
    if (x1==0) | (x2==0) | (x3==0) | (x4==0) | (x5==0) | (x6==0) | (x7==0)
        continue
    end
    for k=N:1:size_primes(2)
        if rand_matrix(i)==p_primes(k)
            kilkist=kilkist+1
            break
        end    
    end
end    
disp("Кількість псевдопростих для баз а(i):")
disp("Для а1:  "+string(k1))
disp("Для а2:  "+string(k2))
disp("Для а3:  "+string(k3))
disp("Кількістьть простих:  "+string(kilkist))
