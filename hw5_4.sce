// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 30.10.2017
//№4
//створення функції,яка рахує кількість кроків в алгоритмі Евкліда
function k=kilkistkrokiv(a,b)
    k=0
    while %t
        if a>b
            a=modulo(a,b)
            k=k+1
            if a==0
                break
            end
            
        else
            b=modulo(b,a)
            k=k+1
            if b==0
                break
            end
            
        end
            
    end
endfunction
//знаходження найменшої пари чисел a і b,для якої необхідно n кроків
for n=1:1:20
        minx1=10^5
        miny1=10^5
        x1=1
        while %t
            for y1=1:1:x1
                x=kilkistkrokiv(x1,y1)
                if x==n then
                    if x1+y1<minx1+miny1 then
                        minx1=x1
                        miny1=y1
                    end
                    t=1
                    break 
                if t==1 then 
                    t=0
                    break
                    end
                end       
                
            end
            x1=x1+1
            if x1+1>minx1+miny1 then break end   
        end
disp("n="+string(n)+"   a="+string(mini)+"  b="+string(minj))
end
