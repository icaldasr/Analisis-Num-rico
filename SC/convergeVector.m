function r = convergeVector(tol)
    N = 1000;
    X0 = [1;5/2];
    X = [X0];
    
    for i = 2:N
        X1 = [1/i,(1/(i+1))+2];
        X = [X,X1];
        if normaP(X1-X0,3)<tol
            Xf = X1;
            break;
        end
    end
    X0 = x1;
end