function punto1811
    x = linspace(-1,1,5);
    y = 1./(1+25*x.^2);
    
    xx = linspace(-1,1);
    p = polyfit(x,y,4); %Polinomio grado4
    yy = polyval(p,xx); %Valor del polinomio
    
    yh = interp1(x,y,xx); %linear spline
    yc = spline(x,y,xx); %cubical spline
    plot(x,y,'o',xx,yy,'--',xx,yh,'-.',xx,yc,'-');
    hold on
    %plot()
    legend('datos','valores del polinomio','spline lineal','spline cubico')
    endc9