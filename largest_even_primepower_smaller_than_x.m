function [m,p,l]=largest_even_primepower_smaller_than_x(x)
y=sqrt(x);

l=1;
p(l)=max(primes(y));

while y^(1/(l+1))>2
    l=l+1;
    p(l)=max(primes(y^(1/l))); 
end

n=length(p);
for i=1:1:n
    q(i)=p(i)^i;
end
q=q';

[r,l]=max(q);
p=p(l);
l=2*l;
m=p^l;
end

    