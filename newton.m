function raiz = newton (x0, tol)
    %Los m�todos abiertos requieren unicamente de un solo valor de inicio,
    %o de un par de ellos. Estos valores no necesariamente encierran la raiz.
    %La convergencia de los m�todos abiertos es mucho m�s r�pida que la de los m�todos cerrados.
    %Este m�todo es ineficiente en el caso de que la funci�n tenga reices
    %m�ltiples
    %No es recomendable utilizar cuando la derivada es muy complicada 
    
    N = 20000;
    [y1,y2] = funcion(x0);
    x(1)=x0-(y1/y2);
    
    for i = 2:N
        [y1,y2]= funcion(x(i-1));
        x(i)=x(i-1)-(y1/y2);
        
        res = abs(x(i)-x(i-1));
        
        if (res < tol)
            raiz = x(i);
            disp("converge")
            break
        end        
    end
end

function [y1,y2] = funcion(x)
    y1 = (x^2)-2; %Funcion

    y2 = 2*x;    %Derivada
    

end