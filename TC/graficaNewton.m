function graficaNewton(c,x,y)
    n = length(x); % n = length(c)
    x1 = linspace(min(x)-0.5,max(x)+0.5,3000);
    %Primera columna de unos
    for i=1:length(x1)
        x2(1)=1;
        for j = 2:n
            x2(j) = x2(j-1)*(x1(i)-x(j-1));
        end
        y(i) = c * x2';
    end
end