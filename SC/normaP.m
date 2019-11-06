function n = normaP(V,p)
    %Esta funcion calcula la norma P
    
    N = length(V);
    suma = 0;
    for i=1:N
        suma = suma + (abs(V(i)).^p);
    end
    n = suma.^(1/p);
    
end