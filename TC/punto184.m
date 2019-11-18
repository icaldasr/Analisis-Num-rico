function punto184(x,y)
    %figure(1)
    
    xx = 0:0.05:1000;
    %xx = linspace(1,5);
    
    yy = spline(x,y,xx);
    ys = interp1(x,y,xx,'spline'); %knot
    yh =interp1(x,y,xx,'pchip'); %Hermite
    
    plot(x,y,'o');   %Puntos
    hold on;
    plot(xx,yy,'-'); %Natural
    plot(xx,ys,'-.'); %Knot
    plot(xx,yh,'--');%Hermite
    %hold on;
    
    legend('datos dados','natural','knot','hermite');
    hold off;
    
%     figure(2)
%     ys = interp1(x,y,x,'spline');
%     plot(x,y,'o',x,ys);
%     
%     title('Cubic splines with a not-a-knot end condition');
%     xlabel('x');
%     ylabel('y');
%     hold on;
%     
%     legend('datos dados','cubic spline fit');
%     hold off;
%     
%     figure(3)
%     yh =interp1(x,y,x,'pchip');
%     plot(x,y,'o',x,yh);
%     title('piecewise cubic Hermite interpolation');
%     hold on
%     legend('datos dados','Picewise cubic Hermite');
%     hold off;
end