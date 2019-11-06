function [r,theta] = numerosComplejos(z)
   
    plot(2*exp(i*3*(pi/2)),'o')
    grid on
    
    r = abs(z);
    theta = asin(imag(z)/abs(z));
end