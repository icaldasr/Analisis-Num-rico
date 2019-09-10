function raiz = falsaPosicion2(xl,xu,tol)
  
    %Metodo cerrado - el algoritmo lleva los mismos pasos que la bisección
    %pero cambia la forma de hallar el xr
    %El error decrece mucho más rápido que en el método de la bisección
    %xl es el valor inferior del intervalo
    %xu es el valor superior del intervalo
    %tor es la toleracia del error 
    
    %format long %devuelve el resultado con 15 crifras
    N = 2000; %Numero de iteraciones
    
    xl(1)= xl;
    xu(1)=xu;
    
    xr(1) = xu(1)-(((funcion(xu(1)))*(xl(1)-xu(1)))/(funcion(xl(1))-funcion(xu(1))));
    disp( funcion(xu(1))*funcion(xl(1)))
    if funcion(xu(1))*funcion(xl(1)) > 0
        disp("Error")
    else
    
    for i = 2:N

        if funcion(xl(i-1))*funcion(xr(i-1)) < 0
            xl(i) = xl(i-1);
            xu(i) = xr(i-1);
            xr(i) = xu(i)-(((funcion(xu(i)))*(xl(i)-xu(i)))/(funcion(xl(i))-funcion(xu(i))));
        else
            xl(i) = xr(i-1);
            xu(i) = xu(i-1);
            xr(i) = xu(i)-(((funcion(xu(i)))*(xl(i)-xu(i)))/(funcion(xl(i))-funcion(xu(i))));
        end
        
        if abs(xr(i)-xr(i-1)) < tol
            disp("Resultttt");
            raiz = xr(i);
            break
        end
         
    end

    end
    
    
end

function y = funcion(x)
    %y = sin(x)-x.^2;
     %y = (-8000000 + 450*x.^2 - x.^3)/2496000000;
     y=log10(x.^2)
end