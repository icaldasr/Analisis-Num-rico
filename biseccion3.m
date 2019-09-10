function raiz = biseccion3(xl,xu,tol)
    %Metodo cerrado
    %Es un metodo relativamente ineficiente 
    %La aproximacion la hace "por fuerza bruta"
    %xl es el valor inferior del intervalo
    %xu es el valor superior del intervalo
    %tor es la toleracia del error 
    
    format long %devuelve el resultado con 15 crifras
    N = 2000; %Numero de iteraciones
    
    xl(1)= xl;
    xu(1)= xu;
    xr(1)=(xl(1)+xu(1))/2;
    
    if funcion(xu(1))*funcion(xl(1)) > 0
        %Si el valor de la primera evaluacion es > 0, es decir, no cambia
        %los signos entonces no se pueden utilizar estos intervalos 
        
        disp("Error")
    else
    
    for i = 2:N

        if funcion(xl(i-1))*funcion(xr(i-1)) < 0
            xl(i) = xl(i-1);
            xu(i) = xr(i-1);
            xr(i) = (xl(i)+xu(i))/2;
        else
            xl(i) = xr(i-1);
            xu(i) = xu(i-1);
            xr(i) = (xl(i)+xu(i))/2;            
        end
        
        if abs(xr(i)-xr(i-1)) < tol
            disp("Resulttttt");
            raiz=xr(i);
            break
        end
    end
     
    end
end

function y = funcion(x)
    
    %y = -12 -21*x+18*x.^2-2.75*x.^3;
    %y = sin(x)-x.^2;
    %y = log10(x.^2)-0.7;
    y = 1-(400/((9.81)*(3*x+((x.^3)/2)).^3))*(3+x);
end

