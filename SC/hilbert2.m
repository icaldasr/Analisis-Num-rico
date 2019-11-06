function HIL = hilbert2(n)
HIL = []
    format long;
    for i = 1:n
        for j = 1:n
            HIL(i,j)=1/(i+j-1);
        end
    end
    
% %     suma de coeficientes en la fila
% %     b=[sum(A(1,:)); sum(A(2,:)); sum(A(3,:)); sum(A(4,:)); sum(A(5,:));
% %     sum(A(6,:)); sum(A(7,:)); sum(A(8,:)); sum(A(9,:)); sum(A(10,:))]
end