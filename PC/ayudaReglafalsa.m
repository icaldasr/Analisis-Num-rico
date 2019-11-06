function result = ayudaReglafalsa(a,b,tolerance, No, fun)
i = 2
q0 = fun(a)
q1 = fun(b)
while i <= No
    p = a - q1*(b-a)/(q1-q0)
    if abs(p - b) < tolerance
        result = p
        return
    end
    i = i+1
    q = fun(p)
    if (q*q1) < 0
        a = b
        q0 = q1
    end
    b = p
    q1 = q
end
disp('Error')