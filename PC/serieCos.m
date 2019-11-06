function y = serieCos(a,tol)
%     n=10000;
%     act=0;
%     sum=0;
%     p=sum;
%     x(1) = 0;
%     for i=1:n
%         act=(((-1)^i)/(factorial(2*i)))*(a^(2*i));
%         sum = sum + act;
%         
%         x(i+1)=sum;
%         
%         if abs(p-sum) < tol
%             y=sum;
%             break
%         end
%         p=sum;
%     end
%     y=sum;
%     plot(x,'+')

    n =1000000;
    sum = 0;
    %x(1)=0;
    p=sum;
    for i=1: n
        
        sum = sum + ((((-1)^i)/(factorial(2*i)))*(a^(2*i)));
        %x(i+1) = sum;
        
        if abs(p-sum) < tol
            y=sum;
            break
        end
        p=sum;

    end
    y= sum;
    %plot(x,'+')
end
