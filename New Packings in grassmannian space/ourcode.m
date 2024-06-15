function [logsize,realdmin]=ourcode(m,n)
%%% output: logsize of our code with delta_c greater than 1/2
k=1+floor(sqrt((n)/(2*m)));
q=n;
p=n;
logsize=(k-1)*log(q)+log(floor(q/m));
realdmin=sqrt(2*m)*sqrt(1-((m*(k-1).^2)/n))
end
