function  A = adaptativoSimpsonTrapecio(a,b,hf,tol)
    x(1) = a;
    %x(2) = x1 + hf;
    A = 0;
    N = 1000;
    i = 1;
    while b - x(i) > 0
%     for i = 2:1000
        h = hf;
        x(i+1) = x(i)+h;

        while (abs(simpson(x(i),x(i+1))) - abs(trapecio(x(i),x(i+1)))) > tol
            h = h/2;
            x(i+1) = x(i) + h;
        end
        A = A + simpson(x(i),x(i+1));
        i = i + 1;
    end
    x
    
    Q = quad(@funcionAux_A,0,1)
end

function simp = simpson(a,b)
    h = (b-a)/2;
    simp = (h/3)*(funcionAux_A(a)+ (4*funcionAux_A(h + a)) + funcionAux_A(b));    
end

function trap = trapecio(a,b)
    h = (b-a)/2;
    trap = h *(funcionAux_A(a) + funcionAux_A(b));
end

function f = funcionAux_A(x)
    %f = exp(-x.^2);
    f = sin(1./x);
end