function punto189
    x = [0 8 16 24 32 40];
    y = [14.621 11.843 9.870 8.418 7.305 6.413];
    
    x1 = 0:0.05:40;
    
    yy = interp1(x,y,x1); %Piecewise linear interpolation
    yy1 = interp1(x,y,27); %estimate O(27)
    
    P = polyfit(x,y,5); %Polinomio grado5
    Op = polyval(P,x);%Evaluación del polinomio
    Op27 = polyval(P,27); %Evaluación del polinomio valor de 27
    
    ys = spline(x,y,x1);%Spline
    ys1 = spline(x,y,27); %Spline evaluado en 27
    
    plot(x,y,'o',x1,yy,'--',27,yy1,'gs');
    
    hold on;
    plot(x,Op,'c-.',27,Op27,'rs')
    plot(x1,ys,'g--',27,ys1,'bs')
    legend('puntos','piecewise linear interpolation','27 linear interpolation','Polinomio grado 5','27 polinomio grado 5','splines','27 con spline');
    
end