function y = serieLn(z,tol)
    n =10000;
    sum = 0;
    x(1)=0;
    p=sum;
    for i=0: n

        sum = sum + (1/(2*i+1))*((z-1)/(z+1))^(2*i+1);
        x(i+1) = sum;
        %j = i + 1;
        if abs(p-sum) < tol
            y=sum;
            break
        end
        p=sum;

    end
    y= 2*sum;
    plot(x,'+')    
end
