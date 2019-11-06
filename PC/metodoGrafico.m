function g = metodoGrafico()

    hold on
    x = linspace(-20,20,400);
    y = 1-(400/((9.81)*(3*x+((x.^3)/2)).^3))*(3+x);
    
    plot(x,y);

    grid on;
  
end