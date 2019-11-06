function f = sumatoriaClase4(n)
sum =0;
for i = 2:n
    sum(i) = sum(i-1)+i^5+sqrt(i);
end
f=sum(end);
plot(sum,'+')
end