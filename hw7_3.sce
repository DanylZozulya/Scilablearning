// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 10.11.2017
//№7.3
//створення функції для обрахування необхідної кількості бітів
function k=kol_bits(a,b)
    //переведення числа в двійкову систему числення
    a=dec2bin(a)
    b=dec2bin(b)
    k=0
    //зміна чисел шляхом дописування нулів для отримання однакової довжини
    while length(a)<length(b)
        a='0'+a
    end
    while length(a)>length(b)
        b='0'+b
    end
    //перевірка кожного біту
    for i=1:length(a)
        if part(a,i)<>part(b,i) then 
            k=k+1
        end
    end
endfunction
