function []=bargvshenkelvspacking(m,n)
%%n must be a prime or a pime power

deltac=.01:.01:.99;
%%%%BARG%%%%
Rbarg=-2*m*log(deltac);
%%%%Henkel%%%%
Rhenkel=((-2*m*(n-m))/n)*log((pi*sqrt(m).*deltac)/2);
%%%%%our construction %%%%%
q=n;
temp=factor(q);
p=temp(1);

K=1:1:floor(1+sqrt(n/m));
logcodesize=zeros(1,length(K));
logcodesize=log(floor(q/m)*q.^(ceil((K*(p-1))/p)));
rate=logcodesize/n;
deltacmin=zeros(1,length(K));
deltacmin=sqrt(1-((m*(K-1).^2)/n));



plot(deltac,Rbarg.^2);
hold on
plot(deltac,max(Rhenkel,0).^2);
plot(deltacmin,rate.^2);
end