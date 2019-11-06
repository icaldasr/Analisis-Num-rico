function G = gaussSeidel(A,b,X0, tol)
    %format rational
    
%     Alternativa a los métodos de eliminación, es decir, métodos iterativos. 
%     El enfoque se da con el método de Gauss-Seidel, el cual emplea valores iniciales y 
%     después itera para obtener mejores aproximaciones a la solución. 
%     El método de Gauss-Seidel es particularmente adecuado cuando se tiene gran número de ecuaciones. 
%     En estos casos, los métodos de eliminación pueden estar sujetos
%     a errores de redondeo. Debido a que el error en el método de Gauss-Seidel es determinado
%     por el número de iteraciones, el error de redondeo no es un tema que preocupe a este
%     método. Aunque, existen ciertos ejemplos donde la técnica de Gauss-Seidel no convergerá
%     al resultado correcto. Éstas y algunas otras ventajas y desventajas que se tienen
%     entre los métodos de eliminación e iterativos.
%     El método de Gauss-Seidel es el método iterativo más comúnmente usado.
     N = size(A);
    
    if N(1) ~= N(2) %Si la matriz no es cuadrada no se evalúa la norma
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