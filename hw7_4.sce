// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 10.11.2017
//
format(25)        //для 10^6  s=1368894350
s=4342345568      //для 16690000  s=4342345568
i1=16690000              //
k=1               //для 10^8  s=3138680690
a=10^8
o=%T
n=5463458053
disp(i1)
for i=i1+1:1:a      //рахував частинами, бо рахує довго, тому починаємо навий цикл з останнього значення попереднього
    
                //послідовне обчислення факторіала за модулем n
    s=s*i
    s=modulo(s,n)
    k=k+1
  //  disp(i)
    if k==10000      //інформація для юзера
        disp("i="+string(i)+"     s="+string(s))
        k=0
    end    
        
end

disp("s="+string(s))
