function c = convergeVector2(tol)
    X0 = [1;5/2];
    X = X0;
    N = 200;
    for i=2:N
        X(:,i)=[1/i;(1/(i+1))+2];
        if normaP(X(:,i)-X(:,i-1),1) < tol
            XF = X(:,i);
            break
        end
    end
    plot(X(1,:),X(2,:),'o')
end