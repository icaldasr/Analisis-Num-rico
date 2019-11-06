function interPolinom(a,b,m)
    % m -> puntos
    % a y b -> intervalo
    
    X = linspace(a,b,m);
    Y = (1./(1+25*X.^2)); 
    
    X1 = linspace(a,b,500);
    
    Y = (1./(1+25*X1.^2));
    %Y = X.^X+log(abs((tan(exp(log10((1./X)))).^2)));
    %Y1 = X1.^X1+log(abs((tan(exp(log10((1./X1)))).^2)));
    
    plot(X,Y,'o') %Puntos
    hold on
    plot(X1,Y1,'b') %continua
    
    interpolDirecta(X,Y,a,b)
end