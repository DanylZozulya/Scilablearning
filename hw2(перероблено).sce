X=[-2:0.01:2];
deff('y=f(x)','y=(1+x)./(1+sqrt(2+x+x^2))');
Y = f(X);
subplot(121);
plot2d(X,Y);

function y=g(x)
    if x<=0 then
        y=sqrt(1+x^2);
    else 
        y=(1+x)/(1+(cos(x))^2);
    end
endfunction

x=[-2:0.01:2];
subplot(122);
plot(x,g)

