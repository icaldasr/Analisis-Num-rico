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
    
    %Esto cambia dependiendo del ejercicio
     alpha = 10^b;
     beta = a;
%    
     x1 = linspace(min(x),max(x),100);
     for i =1: 100
         y1(i) = alpha*x1(i).^beta;
         %y1(i) = b+a*x1(i);
     end
     hold on
    
    %IMPORTANTEEEEE
    %Poner los puntos del enunciado 
    pip = [26.67 93.33 148.89 315.56];
    pop = [1.35 0.085 0.012 0.+000000075];
    plot(log10(pip),log10(pop),'o')
    %plot(pip,pop,'o')
    hold on
    %Aqui se pone la funcion
    plot(x1,y1,'r')
    %plot(alpha*x1.^beta,'b')
end