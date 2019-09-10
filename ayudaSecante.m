function result = ayudaSecante(a,b,tolerance,No,fun)
i= 2
q0 = fun(a)
q1 = fun(b)
while i <= No
    p = b - q1*(b-a)/(q1-q0)
    if abs(p - b) < tolerance
        result = p
        return
    end
    i=i+1
    a = b
    q0 = q1
    b = p
    q1 = fun(p)
end
dips('Error')