// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 10.11.2017
//7.7
function t=ISBN10(a)
    //переведення числа в рядок для простоти розрахунків
    a=string(a)
    a=strrev(a)
    t=%f
    s=0
    if length(s)==10 then   //згідно умови число має бути десятичислове
        
        for i=1:length(a)    
            s=s+evstr(part(a,i))*i
        end
        //якщо остача=0 отже, число є номером
        if modulo(s,11)==0 then
            t=%t
        end
    end    
endfunction
