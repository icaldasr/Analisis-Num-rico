function kapa = numeroCondicional(A)
%Numero condicional espectral = cond(A)
    N = size(A);
    %X= 1:N(1);
    if N(1) ~= N(2) %Si la matriz no es cuadrada no se evalúa la norma
        disp("No es una matriz cuadrada")
    else
        normaInfinito = normaInfMatriz(A);
        normaInfInversa = normaInfMatriz(inv(A));
    end
    
    kapa = normaInfinito * normaInfInversa;
    %Error
    c = log10(kapa);
    
end