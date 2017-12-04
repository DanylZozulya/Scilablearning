// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 30.10.2017
//№2
N=input("Введіть n")
n=1
//знаходження к-ті цифр введеного числа
while 10^(n)<N
    n=n+1
end
n=n+2
//створення випадкової матриці
rand_matrix=rand(1,N+1)
rand_matrix=int(rand_matrix*10^n)
disp(rand_matrix)
pause

a=%f
///перевірка всіх пар чисел
for i=1:1:(N)
    for j=(i+1):1:(N+1)
        if modulo(abs(rand_matrix(i)-rand_matrix(j)),n)==0
            a=%t
            break
        end
    if a break end
    end
if a break end
end
if a then
    disp("така пара чисел наявна:")
    disp("a="+string(rand_matrix(i)))
    disp("b="+string(rand_matrix(j)))
else
    disp("така пара чисел не наявна")    
end
