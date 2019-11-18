function spliness(x,y)
    %x = [1 2 2.5 3 4 5];
    %y = [1 5 7 8 2 1];
    xx = linspace(1,5,300); %intérvalo
    yy = spline(x,y,xx);
    plot(x,y,'o:g',xx,yy) 

%    yy = interp1(x,y,xx,'pchip'); 

%     nearest interpolación asignado el valor del vecino más cercano.
%     linear interpolación lineal (default)
%    spline interpolación con spline cúbica
%     pchip interpolación con polinomios de Hermite
%     cubic (igual que 'pchip')
%     v5cubic interpolación Cúbica usada in MATLAB 5

%not-a-knot end condition
    hold on
    xh = linspace(1,5); %intérvalo
    yh = spline(x,y,xh);
    plot(x,y,'o:r',xh,yh) 

%piecewise cubic hermitie interpolation

    xl = linspace(1,5); %intérvalo
    yl = interp1(x,y,xl,'pchip');
    plot(x,y,'o:b',xl,yl) 


%>> yh = 1./((xx-0.3).^2+0.01)+1./((xx-0.9).^2+0.04)-6;
%>> plot(x,y,'o',xx,yy,xx,yh,'--')
end