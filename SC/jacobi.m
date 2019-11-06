function [j,p] = jacobi(A,b,X0, tol)
    format rational
    
    Emplea una táctica algo diferente. Más que usar inmediatamente el último valor disponible de x,
    esta técnica usa la ecuación
    x1 = b1-a12x2-a13x3/a11 x2=b2-a21x1-a23x3/a22 x3=b3-a31x1-a32x2/a33
    para calcular un conjunto de nuevas x con base en un conjunto de x anteriores. De
    esta forma, conforme se generan nuevos valores, no se usan en forma inmediata sino
    que se retienen para la siguiente iteración.
    N = size(A);
    
    if N(1) ~= N(2) %Si la matriz no es cuadrada no se evalúa la norma
        disp("!!!!!!!No es una matriz cuadrada")
        return
    else

        D = diag(diag(A)); %Diagonal de la matriz
        L = tril(A)-D; %Triangular superior
        U = triu(A)-D; %triangular inferior
        T = -inv(D)*(L+U)
        C = inv(D)*b
        
        radioE = max(abs(eig(T)))
        
        if radioE >=1
            disp("El radio espectral es mayo a 1\nNo converge")
        else
            [XF,p] = iterativo(T,C,tol)
        end
    end
end

function [XF,p] = iterativo(T,C,tol)
    X0 = ones(length(T),1);
    N = 100000;
    
    for i=1:N
        X1 = T*X0+C;
        if norm(X1-X0) < tol
            XF = X1;
            p = i;
            break
        end
        X0 = X1
    end
end