%Matriz triangular inferior
function polinomioNewton(x,y)
    n = length(x);
    matriz = zeros(n,n);
    matriz(:,1) = 1;
    
    for j = 2:n
        for i = j:n
                matriz(i,j) = matriz(i,j-1)*(x(i)-x(j-1));
        end
    end
    %s = inv(matriz)*y';
    c = matrizInferior(matriz,y);
   
    hold on
    plot(x,y,'o')
    grafNewton(c,x)
end

%s coeficiente del polinomio
function grafNewton(c,x)
    n = length(x); % n = length(c)
    x1 = linspace(min(x)-0.5,max(x)+0.5,3000);
    for i=1:length(x1)
        x2(1)=1; %Primera columna de unos
        for j = 2:n
            x2(j) = x2(j-1)*(x1(i)-x(j-1));
        end
        y1(i) = c * x2';
    end
    plot(x1,y1)
    legend('Puntos','Interpolacion Newton');
end

    
    