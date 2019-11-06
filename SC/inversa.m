function Ainv = inversa(A)
%Inversa de una matriz con factorizacion LU
%     N = size(A);
%     
%     b = zeros(1,N(1))';
%     %El vector b va cambiando por cada columna, hasta que toda la matriz
%     %quede invertida
%    % [1 0 0 ..] / [0 1 0...] / [0 0 1 ..] / ....
%     b(1) = 1;
%     [L, U, P] = lu(A);
%     
%     %b2 = P*b;
%     d = L\b; %Forward substitution
%     x = U\d %back substitution
    
    %%%%%%%%%%%%%%%%%%%

    % Do Lu decompositon to obtain triangle matrices (can easily be inverted)
    [L,U,P] = lu(A);
    % Solve linear system for Identity matrix
    I=eye(size(A));
    s=size(A,1);
    Ainv=zeros(size(A));
    for i=1:s
        b=I(:,i);
        Ainv(:,i)=TriangleBackwardSub(U,TriangleForwardSub(L,P*b));
    end
end

function C=TriangleBackwardSub(U,b)
    % Triangle Matrix Backward Substitution
    %
    % Solves C = U \ B;
    %
    %          |1|         |2 2 1|
    % With b = |2| and U = |0 1 4|
    %          |3|         |0 0 3|
    %
    s=length(b);
    C=zeros(s,1);
    C(s)=b(s)/U(s,s);
    for j=(s-1):-1:1
        C(j)=(b(j) -sum(U(j,j+1:end)'.*C(j+1:end)))/U(j,j);
    end
end

function C=TriangleForwardSub(L,b)
    % Triangle Matrix Forward Substitution
    %
    % Solves C = L \ b
    %
    %          |1|         |1 0 0|
    % With b = |2| and L = |2 1 0|
    %          |3|         |3 4 1|
    %
    s=length(b);
    C=zeros(s,1);
    C(1)=b(1)/L(1,1);
    for j=2:s
        C(j)=(b(j) -sum(L(j,1:j-1)'.*C(1:j-1)))/L(j,j);
    end
end