function []=concatenatioin_of_an_arbitrary_innercode_and_AG(n1,m,rate1,delta1)
% n1 is the length of inner code




numofcodewords=exp(n1*rate1);

indices=find(numofcodewords>4);
rate1=rate1(indices);
delta1=delta1(indices);





q=numofcodewords(indices);
delta=0.01:0.01:2;
n=length(delta);

for i=1:1:n
    
    r=rate1.*(1-((1-sqrt(1-delta(i)/2))./(1-sqrt(1-delta1/2)))-(1./(sqrt(q)-1)));
    [rate(i),delta1opt(i)]=max(r);
    i
end
rate=(rate+abs(rate))./2;
plot(delta,rate);

end