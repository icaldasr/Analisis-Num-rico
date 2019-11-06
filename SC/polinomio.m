function polinomio(S,a,b)
    %S coeficientes del bolinomio
    %a,b rango
    
    n = length(S);
    X = linspace(a,b,3000);
    
    for i = 1:length(X)
        for j = 1:n
            x1(j) = X(i)^(j-1);
        end
        Y(i) = S*x1';
    end
    %ezplot('2+x+(3*x^3)',[a,b])
    hold on
    plot(X,Y,'r')
end

