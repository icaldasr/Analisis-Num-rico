function yint = poliNewtonSi(x,y,xx)
    %xx Valor de la variable independiente con el cua es calculada la
    %Diferencias divididas
    n = length(x);

    b(:,1) = y(:);
    for j = 2:n
        for i = 1:n-j+1
            b(i,j) = (b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i))
        end
    end
    xt = 1;
    yint = b(1,1);
    for j = 1:n-1
        xt = xt*(xx-x(j));
        yint = yint+b(1,j+1)*xt;
    end
end

% xx=linspace(min(x),max(x));
% yy=pol_newton(x,a,xx);
% plot(x,y,'.','markersize',10)
% hold on,plot(xx,yy)

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
    %ezplot('2+x+(3*x^3)',[a,b])
    hold on
    plot(X,Y,'r')
end