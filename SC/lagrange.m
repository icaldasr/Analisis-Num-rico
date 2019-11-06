function r = lagrange(X,Y,xx)
    n = length;
    
    s = 0;
    for i = 1:n
        product = Y(i);
        for j = 1:n
            if i~=j
                product = product*(xx-X(j))/(X(i)-X(j));
            end
        end
        s = s + product;
    end
    r = s;
end