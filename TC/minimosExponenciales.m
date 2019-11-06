unction [a,b] = minimosExponenciales(x,y)
    %Un vector para X y otro para Y
    yln = log(y);
    
    [a,b] = minimosCuadrados(x,yln);
    
    x1 = linspace(-1,15,15);
    for i = 1:15
        y1(i) = 0.5*exp(0.3*x1(i))+rand(1,1);
    end
    
    plot(x1,y1,'o')
    hold on
    x2 = linspace(-1,15,150);
    plot(x2,0.5*exp(0.3*x2),'r')
end