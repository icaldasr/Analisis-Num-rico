function y=sumatoriaEuler(a,tol)
% n=10000;
% x(1)=0;
%     for i=2:n
%         sum = 1;
%         for k = 1:i
%             sum =sum+(a^k/factorial(k));
%         end
%         x(i)=sum;
%     
%     
%         if abs(x(i)-x(i-1)) < tol
%             y=x(i)
%         break
%         end
%     end
%     plot(x,'+')
 
    z=1;
    n=1000;
    x(1)=0;
    format long;
    for i=1:n

        y=a^i/factorial(i);

        z=z+y;
        x(i+1)=z;

        j = i + 1;
        if abs(x(j)-x(j-1)) < tol
            y=x(j)
            break
        end
    end
    y=z
    plot(x,'+')    
    
    
end

