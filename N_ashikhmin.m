function [N]=N_ashikhmin(n,k)
j=0:1:k-1;
num=2.^(n-2*j)-1;
den=2.^(j+1)-1;
N=prod(num)/prod(den);
end