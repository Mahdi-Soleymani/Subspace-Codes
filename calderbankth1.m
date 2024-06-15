function [logsize]=calderbankth1(i,l)
j=l:1:i-1;
logsize=(i-l)*log(2)+log(gausscoeff(i,l))+sum(log((2.^j)+1));
end