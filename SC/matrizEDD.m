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
