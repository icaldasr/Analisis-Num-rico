function C = poliNewton(X,Y,a,b)
  n = length(X);
  
  matriz = zeros(n,n);
  matriz(:,1) = 1;
  
  matrizD = zeros(n,n);
  
  for j = 2 : n
    for i = j: n
      matriz(i,j) = (matriz(i,j-1))*(X(i)-X(j-1));
    end
    %disp(matriz)
  end
    C = matrizInferior(matriz,Y)
    
    %C = inv(matriz)*Y';
    hold on
    plot(X,Y,'o')
    grafica_newtonA(C,X,Y)
end

function grafica_newtonA(C,X,Y)
    n = length(X); % n = length(C)
    
    X1 = linspace(min(X)-0.5,max(X)+0.5,300);
    
    for i = 1:length(X1)
        X2(1) = 1;
        for j = 2:n
            X2(j) = X2(j-1)*(X1(i)-X(j-1));
        end
        Y1(i) = C * X2';
        %Y1(i) = 0;
    end
   plot(X1,Y1)
end