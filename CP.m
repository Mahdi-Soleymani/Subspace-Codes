function[logsize]=CP(i,l)

kk2=ceil((floor(1+2^((i-l-1)/(2))))/(2));
logsize=(kk2-1)*(i-1)*log(2)+(i-l)*log(2);

end
