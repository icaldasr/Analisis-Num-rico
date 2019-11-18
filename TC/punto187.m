function punto187
    x = [1 3 5 6 7 9];
    y = [1.000 2.172 4.220 5.430 4.912 9.120];
    f = 0.0185*x.^5-0.444*x.^4+3.9125*x.^3-15.456*x.^2+27.069*x-14.1;
    x1 = linspace(1,9);

    %Not a knot
    yy = interp1(x,y,x1,'spline');
    
    %clamped end condition
    s1 = ((y(2)-y(1))/(x(2)-x(1)));
    s2 = ((y(6)-y(5))/(x(6)-x(5)));
    yc = [s1 f s2]; %Sloped end conditions
    yyc = spline(x,yc,x1);
    plot(x,y,'o',x1,yy,'r--',x,f,'-',x1,yyc,'b-.')
    legend('Data points','Not-a-knot end condition','function','Clamped end')
end