function p = puntoFijo(x0,tol)    
    %Los métodos abiertos requieren unicamente de un solo valor de inicio,
    %o de un par de ellos. Estos valores no necesariamente encierran la raiz.
    %La convergencia de los métodos abiertos es mucho más rápida que la de los métodos cerrados.
    %El punto fijo converge cuando |f'(x)| < 1
    %Este método previene la divergencia, pero tarda más en converger que
    %el método de la secante.
    %El punto "p" es atractor si existe una condición inicial x0 tal que
    %lim f(xn) = p
    %n->inf
    %En otro caso el punto es repulsor
    
    N = 20000;
    x(1) = x0;
    for i=2:N
        x(i)=funcion(x(i-1));
        
        if abs(x(i)-x(i-1)) < tol
            p = x(i);
            break;
        end
    end
end

function y=funcion(x)
    %y=exp(-x^2);
    %y= log(x^2)*sin(x)+x^3;
    %y=sin(x)-x;
    %y= sin(10*x)+cos(3*x);
   % y=sin(sqrt(x))-x;
   y = ((x.^4)-10)/5

end


