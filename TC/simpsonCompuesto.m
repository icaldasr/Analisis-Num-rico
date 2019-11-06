function simpson = simpsonCompuesto (a,b,n)
    format long
    x = linspace(a,b,n);
    w = (x(2)-x(1))/2
    %w = ((b-a)/(n-1))/2;
    sum = 0;    
    
    for i = 1:n-1
        sum = sum + (w/3) * (funcionAux(x(i)) + 4* funcionAux(x(i) +  w) + funcionAux(x(i+1)));
    end 
    simpson = sum;
    Q = quad(@funcionAux,0,1) %Aproximaci�n de matlab
end

function f = funcionAux(x)
    f = exp(-x.^2);
end