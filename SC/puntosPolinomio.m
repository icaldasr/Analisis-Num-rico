function puntosPolinomio(a,b,m)
    %m -> puntos
    x = linspace(a,b,m);
    %y = x.^x + log(abs((tan(exp(log10((1./x)))).^2)));
    y = (1./(1+25*x.^2)); 
    
    x1 = linspace(a,b,500);
    %y1 = x1.^x1 + log(abs((tan(exp(log10((1./x1)))).^2)));
    y1 = (1./(1+25*x1.^2)); 
    
    plot(x,y,'o') %puntos
    hold on
    plot(x1,y1,'g') %polinomio original
 
    interpolDirecta1(x,y,a,b)
end