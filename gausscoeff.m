function [out]=gausscoeff(n,k)
vnum=n-k+1:1:n;
num=prod(2.^vnum-1);
vden=2:1:k;
den=prod(2.^vden-1);
out=num/den;
end