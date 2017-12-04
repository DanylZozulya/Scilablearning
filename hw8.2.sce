// Copyright (C) 2017 - Corporation - Author
//
// About your license if you have any
//
// Date of creation: 04.12.2017
//№8.2.1(з пдск в полярну)
function [ro,fi]=pdsttopolar(x,y)
    if (x==0)&(y>0) then
        fi=%pi/2;
        ro=abs(y);
    elseif (x==0)&(y<0) then
        fi=3/2*%pi;
        ro=abs(y);
    else
        fi=atan(y/x);
        ro=sqrt(x^2+y^2);
        format(5);
    end
    disp(fi,'fi= ');
    disp(ro,'ro= ');
endfunction
//№8.2.2(з полярної в пдск)
function [x,y]=polartopdsk(fi,ro)
        x=ro*cos(fi);
        y=ro*sin(fi);
        format(5);
        disp(x,'x= ');
        disp(y,'y= ');
    end
endfunction
//№8.2.3(з пдск у циліндричну)
function [ro,fi,z]=pdsktocyl(x,y,z)
    if (x==0)&(y>0) then
        fi=%pi/2;
        ro=abs(y);
    elseif (x==0)&(y<0) then
        fi=3/2*%pi;
        ro=abs(y);
    else
        fi=atan(y/x);
        ro=sqrt(x^2+y^2);
        format(5);
    end
    disp(fi,'fi= ');
    disp(ro,'ro= ');
    disp(z,'z= ');
endfunction
//№8.2.4(з циліндричної у пдск)
function [x,y,z]=cyltopdsk(fi,ro,z)
        x=ro*cos(fi);
        y=ro*sin(fi);
        z=z;
        disp(x,'x=');
        disp(y,'y=');
        disp(z,'z=');
    end
endfunction
//№8.2.5(з пдск в сферичну)
function [fi,teta,ro]=pdsktisph(x,y,z)
    if x==y==z==0 then
        disp('не можливо здійснити перехід');
    elseif (x==0)&&(y>0) then
        fi=%pi/2;
        ro=sqrt(x^2+y^2+z^2);
        teta=acos(z/ro);
    elseif (x==0)&&(y<0) then
        fi=3/2*%pi;
        ro=sqrt(x^2+y^2+z^2);
        teta=acos(z/ro);
    else
        fi=atan(y/x);
        ro=sqrt(x^2+y^2+z^2);
        teta=acos(z/ro);
    end
    format(7);
    disp(fi,'fi= ');
    disp(ro,'ro= ');
    disp(teta,'teta= ');
endfunction
//№8.2.6(з сферичної у пдск)
function [x,y,z]=sphtopdsk(fi,teta,ro)
    if ro<=0 then
        disp('Error:ro<=0');
    else
        x=ro*sin(teta)*cos(fi);
        y=ro*sin(teta)*sin(fi);
        z=ro*cos(teta);
        disp(x,'x=');
        disp(y,'y=');
        disp(z,'z=');
    end
endfunction
