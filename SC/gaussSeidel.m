function G = gaussSeidel(A,b,X0, tol)
    %format rational
    
%     Alternativa a los m�todos de eliminaci�n, es decir, m�todos iterativos. 
%     El enfoque se da con el m�todo de Gauss-Seidel, el cual emplea valores iniciales y 
%     despu�s itera para obtener mejores aproximaciones a la soluci�n. 
%     El m�todo de Gauss-Seidel es particularmente adecuado cuando se tiene gran n�mero de ecuaciones. 
%     En estos casos, los m�todos de eliminaci�n pueden estar sujetos
%     a errores de redondeo. Debido a que el error en el m�todo de Gauss-Seidel es determinado
%     por el n�mero de iteraciones, el error de redondeo no es un tema que preocupe a este
%     m�todo. Aunque, existen ciertos ejemplos donde la t�cnica de Gauss-Seidel no converger�
%     al resultado correcto. �stas y algunas otras ventajas y desventajas que se tienen
%     entre los m�todos de eliminaci�n e iterativos.
%     El m�todo de Gauss-Seidel es el m�todo iterativo m�s com�nmente usado.
     N = size(A);
    
    if N(1) ~= N(2) %Si la matriz no es cuadrada no se eval�a la norma
        disp("!!!!!!!No es una matriz cuadrada")
        return
    else

        D = diag(diag(A)) %Diagonal de la matriz
        L = tril(A)-D %Triangular superior
        U = triu(A)-D %triangular inferior
        T = -inv(D+L)*U;
        C = inv(D+L)*b;
            
        radioE = max(abs(eig(T)));
        
        if radioE >1
            disp("El radio espectral es mayo a 1. No converge")
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
        X0 = X1;
    end
end