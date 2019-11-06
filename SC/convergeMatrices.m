function vectorFinal = convergeMatrices(A,b,X0,tol)
%Gauss Seidel metodo comun más utilizado para resolver ecuaciones
%algebraicas lineales
% En jacobi los x calculados en la 1 itracion se utilizan en la 2 iteración, en cambio en 
% Gauss los X se utilizan en la misma iteración
% Aunque hay ciertos casos donde es útil el método de Jacobi, la utilización
% de Gauss-Seidel da la mejor aproximación y usualmente lo hace el método preferido.

    N = size(A);
        
    D = diag(diag(A)); %Diagonal de la matriz
    L = tril(A)-D; %Triangular superior
    U = triu(A)-D; %triangular inferior
    %GaussSeidel
    Tg = -inv(D+L)*U;
    Cg = inv(D+L)*b;
    %Jacobi
    Tj = -inv(D)*(L+U);
    Cj = inv(D)*b;
        
    if matrizEDD(A) == 1
        disp("Ambos metodos convergen")
        
        disp("Metodo Jacobi")
        [XF,p] = iterativo(Tj,Cj,tol)
        
        disp("Metodo Gauss Seidel")
        [XF,p] = iterativo(Tg,Cg,tol)
    
    else
        radioEj = max(abs(eig(Tj)));
        radioEg = max(abs(eig(Tg)));
        
        if radioEj > 1
            disp("El radio espectral de Jacobi > 1");
            
            
        else
            disp("Metodo Jacobi");
            [XF,p] = iterativo(Tj,Cj,tol)
        end
        
        if radioEg > 1
            disp("El radio espectral de Gauss > 1")
            
        else
            disp("Metodo Gauss")
            [XF,p] = iterativo(Tg,Cg,tol)
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

function DD = matrizEDD(A)
  n = length(A);
  diagonal = [n];
  cond = 1;
  for i=1:n
    max = 0;
    for j = 1:n
      if max <= abs(A(i,j))
        max = A(i,j);
        mayor = j;

      end
    end
    if find(mayor==diagonal)
      %disp("No es de diagonal estrictamente dominante");
      cond = 0;
      DD = 0;
      break;
    else
      diagonal(i) = mayor;
    end
    
    end
  if cond == 1
    %disp("Es de diagonal estrictamente dominante");
    DD = 1
  end
end
