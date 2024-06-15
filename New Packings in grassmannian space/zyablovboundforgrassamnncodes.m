function [rate]=zyablovboundforgrassamnncodes(beta,m)

delta=0.001:0.001:.999;
n=length(delta);
for i=1:1:n
    delta1=0.01:0.01:.99;
    r=(-beta*m*log(delta1)).*(1-((1-sqrt(1-delta(i).^2))./(1-sqrt(1-delta1.^2))));
    [rate(i),delta1opt]=max(r);
    
end
plot(delta,rate);
%-.5*beta*m*log(delta1opt/200)
end