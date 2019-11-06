function x = factorizacionLUP(A,b)
%Factorizacion con pivoteo
    [L, U, P] = lu(A);
    
    b2 = P*b;
    d = L\b2; %Forward substitution
    x = U\d; %back substitution
end