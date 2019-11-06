function norma = normaInfMatriz(A)
%norma infinito de una matriz
%Maximo de la suma de los elementos de todas las filas
    N = size(A);
    X= 1:N(1);
    if N(1) ~= N(2) %Si la matriz no es cuadrada no se eval�a la norma
        disp("No es una matriz cuadrada")
    else
        %disp("La norma es")
        for i=1:N(1)
            suma = 0;
            for j=1:N(1)
                suma = suma + abs((A(i,j)));
            end
            X(i) = suma;
        end
    end
    norma = max(X);
end