function r = interpolDirecta(X,Y,a,b)
    
    %X = [-1,2 0 3]
    %Y = [1, -2 0 3]
    %[-1, 4]
    n = length(X);
    matriz = zeros(n,n);
    
    %matriz(:,1) = 1;
    for i = 1:n
          matriz(:,i) = X.^(i-1);   
    end
    
    %inv(matriz)
    S = inv(matriz)*Y'
    %disp(matriz)
    
    graficaPolinomioA(S',a,b);

end

function graficaPolinomioA(S,a,b)
    %S coeficientes del polinomio
    %a,b intervalo
    n = length(S);
    X = linspace(a,b,300);
    
    for i = 1:length(X)
        for j = 1:n
            x1(j) = X(i)^(j-1);
        end
        Y(i) = S*x1';
    end
    disp(S*x1')

    hold on
    plot(X,Y,'r')
end
