function Fn = TDFinv(x)
    n = length(x);
    F(1,:) = 1;
    F(:,1) = 1;
    w = exp(-i*((2*pi)/n));
    for j = 1:n
        for k = 1:n
            F(j,k) = w^((-1)*(j-1)*(k-1)); 
        end
    end
    y = F*x';
    Fn = (1/sqrt(n))*y;
end