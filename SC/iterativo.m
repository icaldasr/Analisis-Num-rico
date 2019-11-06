function [j,p] = iterativo(A,b,X0, tol)
    %format rational
    N = size(A);
    
    if N(1) ~= N(2) %Si la matriz no es cuadrada no se evalúa la norma
        disp("!!!!!!!No es una matriz cuadrada")
        return
    else

        D = diag(diag(A)); %Diagonal de la matriz
        L = tril(A)-D; %Triangular superior
        U = triu(A)-D; %triangular inferior
        T = -inv(L+U)*D
        C = inv(L+U)*b
        
        radioE = max(abs(eig(T)))
        
        if radioE >=1
            disp("El radio espectral es mayo a 1\nNo converge")
        else
            [XF,p] = iterativo2(T,C,tol)
        end
    end
end

function [XF,p] = iterativo2(T,C,tol)

%
    X0 = ones(length(T),1);
    N = 100000;
    for k = 1:n
    for i=1:N
        X1^k+1 = T^k*X0+C;
        if norm(X1-X0) < tol
            XF = X1;
            p = i;
            break
        end
        X0 = X1
    end
    end
    
end