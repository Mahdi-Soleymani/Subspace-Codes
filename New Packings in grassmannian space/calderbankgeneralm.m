function [logsize]=calderbankgeneralm(i,k)
%N=2^i d=1 code dim=2
j=k:1:i-1;
logsize=(i-k)*log(2)+log(gausscoeff(i,k))+sum(log((2.^j)+1));
end