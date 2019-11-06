function [a,b] = minimosExponenciales2(x,y)
    %Un vector para X y otro para Y
    yln = log(y);
    
    [a,b] = minimosCuadrados(x,yln);
    
    x1 = linspace(0.1,30,15);
    for i = 1:15
        y1(i) = 0.5*x1(i)^(1/3)+0.01*rand(1,1);
    end
    
    plot(x1,y1,'+')
    hold on
    x2 = linspace(0.1,30,150);
    plot(x2,0.5*x2.^(1/3),'r')  
end