function yint = prueba(x,y,xx)
    n = length(x);

    if length(y)~=n, error('x and y must be same length'); end
    b = zeros(n,n);
    % assign dependent variables to the first column of b.
    %b(:,1) = 1; % the (:) ensures that y is a column vector.
    b(:,1) = y(:);
    for j = 2:n
        for i = 1:n-j+1
            b(i,j) = (b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i))
            %b(i,j) = (b(i+1,j-1)-b(i,j-1))
            %b(i,j) = (x(i+j-1)-x(i))
        end
    end
    xt = 1;
    yint = b(1,1);
    for j = 1:n-1
        xt = xt*(xx-x(j));
        yint = yint+b(1,j+1)*xt;
    end
end