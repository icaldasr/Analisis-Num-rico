function raiz = secante(x0,x1,tol)
    %Los métodos abiertos requieren unicamente de un solo valor de inicio,
    %o de un par de ellos. Estos valores no necesariamente encierran la raiz.
    %La convergencia de los métodos abiertos es mucho más rápida que la de los métodos cerrados.
    iter = 0;
    N=2000;
    
    for i = 2:N
    %while(1)
        xn = x0 - ((funcion(x0)*(x1-x0))/(funcion(x1)-funcion(x0)));
        iter = iter + 1;
        
        if xn ~= 0
            err = abs((xn-x0)/xn)*100;
        end
        if err <= tol || iter >= N
            break
        end
        
        x0 = x1;
        x1 = xn;
    end
    
    raiz = xn;
end

function y = funcion(x)
        %y = (x^2)-2; %Funcion
        %y = exp(-(x.^2)).*sin(1./x.^2) + sqrt(x);
        y=x^3-6*x^2+11*x-6.1;
        %y = x^5+7x-6;
end
