function y=serieSen(a,tol)
%     n=100000000;
%     x(1)=0;
%     %format long
%     sum = 0;
%     %act = 0;
%     p=sum;
% 
%     for i = 0:n
%         %act = (((-1)^i)/(factorial(2*i)))*(a^(2*i));
%         act = (((-1)^i/factorial((2*i)+1))*(a^(i+1)));
%         sum = sum + act;
%         
%         x(i+1)=sum;
%         %y=sum;
%         if abs(p-sum) < tol
%             y=sum;
%             break
%         end
%         p=sum;
%     end
%     
%     y=sum;
%     plot(x,'+') 

    n =10000;
    sum = 1;
    x(1)=0;
    p=sum;
    for i=1: n

        sum = sum + (((-1)^i/factorial((2*i)+1))*(a^(i+1)));
        x(i+1) = sum;
        %j = i + 1;
        
        if abs(p-sum) < tol
            y=sum;
            break
        end
        p=sum;

    end
    plot(x,'+')
end
