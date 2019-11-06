function norma = normaInfMatricial(A)
    
    X = linspace(-1,1,200);
    N=[];
    Y = linspace(-1,1,200);
    
    for i = 1:length(X)
        for j =1:length(Y)
            N = [N,normaInf(A*[X(i);Y(j)])];
        end
    end
    %norma = N(end);
    norma = max(N);
end