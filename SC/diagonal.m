function d = diagonal(A)
    D = diag(A)
    for i=1:length(D)
        if D(i)==0
            disp("La diagonal tiene 0")
        else
            disp("bien")
        end
    end
    
end