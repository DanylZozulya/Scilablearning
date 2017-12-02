// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 30.10.2017
//№6
a=input("A=")
b=input("B=")
x=[]
k=0
n1=min(a(1),b(1))
n2=max(a(1),b(1))
for i=n1:1:n2  //область визначення
    y=(i-a(1))*(a(2)-b(2))/(a(1)-b(1))  //рівняння прямої, що прозодить через дві точки
    if int(y)==y 
        x=[x,i]
        k=k+1
    end    
end
//побудова шуканих точок та прямої АВ
x1=[a(1),b(1)]
y1=[a(2),b(2)]
y=(x-a(1))*(a(2)-b(2))/(a(1)-b(1))
plot(x1,y1)
plot(x,y,'o','red')
