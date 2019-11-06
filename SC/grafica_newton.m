function grafica_newton(C,X,Y)
    n = length(X), % n = length(C)
    
    X1 = linspace(min(X)-0.5,max(X)+0.5,300);
    
    for i = 1:length(X1)
        X2(1) = 1;
        for j = 2:n
            X2(j) = X2(j-1)*(X1(i)-X(j-1));
        end
        Y1(i)= C * X2';
    end
end