function []=concatenatioin_of_henkel_and_AG(n1,m)
% n1 is the length of inner code

%for given delta


delta1_max=(4/(m*pi^2))*4^(-1/(m*(n1-m)));

delta1=0.01:0.01:delta1_max;
numofcodewords=(4./(pi^2*delta1*m)).^(m*(n1-m));

%for j=1:1:length(delta1)
 %   q(j)=largest_even_primepower_smaller_than_x(numofcodewords(j));
%end
q=numofcodewords;
delta=0.01:0.01:1;
n=length(delta);

for i=1:1:n
    
    r=(log(q)/n1).*(1-((1-sqrt(1-delta(i)/2))./(1-sqrt(1-delta1/2)))-(1./(sqrt(q)-1)));
    [rate(i),delta1opt(i)]=max(r);
    i
end
rate=(rate+abs(rate))./2;
plot(delta,rate);

end