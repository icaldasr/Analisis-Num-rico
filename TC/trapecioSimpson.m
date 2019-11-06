function [trapecio,simpson] = trapecioSimpson(a,b)
    %Aproximaci�n del trapecio: exacta para l�nea recta
    %Aproximaci�n de simpson: Exacta para polinomio
    
    h = (b-a)/2;
    
    trapecio = h *(funcionAux(a) + funcionAux(b));
    
    simpson = (h/3)*(funcionAux(a)+ (4*funcionAux(h + a)) + funcionAux(b));
end

function f = funcionAux(x)
    f = exp(-x^2);
end