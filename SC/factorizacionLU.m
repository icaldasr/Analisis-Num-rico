function r = factorizacionLU(A,b)
%Soluciona un sistema AX = b utilizando factorización LU
    [L U P] = lu(A);
    
    %ESTA ES LA SEGURA%
    d = L\b; 
    x = U\d
    %%%
    b2 = productoMatrices(P,b);
    Y = matrizInferior(L,b2);
    X = matrizSuperior(U,Y);
    %r = productoMatrices(A,X);
    
    
end

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

function x = matrizInferior(A, b)
    N = size(A);
    
    x(1) = b(1) / A(1,1);
    
    for i=2:N(1)
        sumatoria = 0;
        for j= 1:i-1
            sumatoria = sumatoria + A(i,j)*x(j);
        end
        x(i)=(b(i)-sumatoria)/A(i,i);
    end
end

function x = matrizSuperior(A, b)
    N = size(A);
    
    x(N(1)) = b(N(1)) / A(N(1),N(1));
    
    for i=N(1)-1:-1:1
        sumatoria = 0;
        
        for j= i+1:N(1)
            sumatoria = sumatoria + A(i,j)*x(j);
        end
        x(i)=(b(i)-sumatoria)/A(N(1),N(1));
    end
end    