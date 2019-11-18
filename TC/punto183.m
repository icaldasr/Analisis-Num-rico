function punto183(x,y)
    figure(1)
    ys = interp1(x,y,x,'spline');
    plot(x,y,'o',x,ys);
    
    title('Cubic splines with a not-a-knot end condition');
    xlabel('x');
    ylabel('y');
    hold on;
    x3 =0:0.05:1;
    y3=humps(x3);
    plot(x3,y3);
    
    legend('datos dados','cubic spline fit','Humps');
    hold off;
    
    figure(2)
    yh =interp1(x,y,x,'pchip');
    plot(x,y,'o',x,yh);
    title('piecewise cubic Hermite interpolation');
    hold on
    x4=0:0.05:1;
    y4=humps(x4);
    plot(x4,y4);
    legend('datos dados','Picewise cubic Hermite','Humps');
    hold off;
    
end