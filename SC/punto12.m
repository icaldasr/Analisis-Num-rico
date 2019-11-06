function ans = punto12(a)

  x = [2 6 9 12 15 18 20 24];
  y = [0 1.5 3.2 4.1 3.4 2 1 0];
 
  xx = linspace(2,24)
  yy = spline(x,y,xx)
  ans = spline(x,y,a)
  hold on
  plot(x,y,'o')
  plot(xx,yy)
  plot(a,ans,'*')
end 