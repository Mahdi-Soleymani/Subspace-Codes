function []=concatenatioin_of_charactercodes_and_AG(n1,m)
% n1 is the length of inner code

%for given delta

[rate1,delta1]=charactersumcodes(n1);
numofcodewords=exp(n1*rate1);

indices=find(numofcodewords>4);
rate1=rate1(indices);
delta1=delta1(indices);





q=numofcodewords(indices);
delta=0.01:0.01:1;
n=length(delta);

for i=1:1:n
    
    r=rate1.*(1-((1-sqrt(1-delta(i)/2))./(1-sqrt(1-delta1/2)))-(1./(sqrt(q)-1)));
    [rate(i),delta1opt(i)]=max(r);
    i
end
rate=(rate+abs(rate))./2;
plot(delta,rate);

end