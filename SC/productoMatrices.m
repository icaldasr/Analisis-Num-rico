function prod = productoMatrices(A,B)
    [NA,MA] = size(A);
    [NB,MB] = size(B);
    
    if MA == NB
        for i=1:NA %Recorre filas matriz A
            for j=1:MB %Recorre columnas matriz B
                suma=0; %Acumulador
                for k = 1:MA %numero de columnas de la matriz A
                    suma = suma + A(i,k)*B(k,j); %Se realiza el producto elemento por elemento                    
                end
                prod(i,j) = suma; %Sumatoria final guardada en matriz resultante
            end
        end
    else
        disp("No se puede realizar la multiplicacion")
    end
end