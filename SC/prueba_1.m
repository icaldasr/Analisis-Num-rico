function x = prueba_1(A,b)
    [L, U, P] = lu(A);
    
    b2 = P*b;
    d = L\b2;
    x = U\d;    
end