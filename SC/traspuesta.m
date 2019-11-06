function ans = traspuesta(A)
    [N,M] = size(A);
    
    for i=1:N
        for j = 1:M
            ans(j,i) = A(i,j);
        end
    end
            
end