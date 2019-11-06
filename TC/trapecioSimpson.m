function [trapecio,simpson] = trapecioSimpson(a,b)
    %Aproximación del trapecio: exacta para línea recta
    %Aproximación de simpson: Exacta para polinomio
    
    h = (b-a)/2;
    
    trapecio = h *(funcionAux(a) + funcionAux(b));
    
    simpson = (h/3)*(funcionAux(a)+ (4*funcionAux(h + a)) + funcionAux(b));
end

function f = funcionAux(x)
    f = exp(-x^2);
end