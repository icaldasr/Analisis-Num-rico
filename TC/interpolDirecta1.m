%matriz * s = y
function interpolDirecta(x,y,a,b)
    n = length(x);
    matriz = zeros(n,n);
    for i=1:n
        matriz(:,i)= x.^(i-1);
    end
    s = inv(matriz)*y';
    grafPolinomio(s',a,b)
end
w
%s coeficiente del polinomio
function grafPolinomio(s,a,b)
    n = length(s);
    x = linspace(a,b,3000);
    N = length(x);
    for i=1:N
        for j=1:n
            x1(j) = x(i)^(j-1);
        end
        y(i) = s*x1'; %x1.' es la traspuesta
    end
    plot(x,y,'r');
end