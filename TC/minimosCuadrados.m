function [a,b] = minimosCuadrados(x,y)
    %Un vector para X y otro para Y
    xiyi = 0;
    xi = 0;
    yi = 0;
    quadxi = 0;
    n = length(x);
    for i=1:n
        xiyi = xiyi + (x(i)*y(i));
        xi = xi + x(i);
        yi = yi + y(i);
        quadxi = quadxi + (x(i).^2);
    end
    a = ((n*xiyi)-(xi*yi))/((n*quadxi)-(xi.^2));
    b = ((quadxi*yi)-(xiyi*xi))/((n*quadxi)-(xi.^2));
    plot(a,b,'x')
    
    %Esto cambia dependiendo del ejercicio
    alpha = 1/b;
    beta = a*alpha;
    
    x1 = linspace(min(x),max(x),100);
    for i =1: 100
        y1(i) = (alpha*x1(i)^2.)/(beta+x1(i).^2);
    end
    hold on
    
    %IMPORTANTEEEEE
    %Poner los puntos del enunciado 
    pip = [0.5 0.8 1.5 2.5 4];
    pop = [1.1 2.5 5.3 7.6 8.9]; 
    plot(pip,pop,'o')
    plot(x1,(alpha*x1.^2)./(beta+x1.^2),'b')
end