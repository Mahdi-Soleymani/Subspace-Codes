%function [delta,logsize] = charactersumcodes(p)
function [delta,rate] = charactersumcodes()
p=101;
q=p^1;
n=q;

k_max=floor(1+sqrt(q));
delta=zeros(1,k_max);
rate=zeros(1,k_max);
logsize=zeros(1,k_max);


for k=1:1:k_max
%rate(k)=k*log(q)/(q);;
delta(k)=(1-(k-1)^2*q/n^2);
%rate(k)=log(q)*ceil(k*(p-1)/p)/n;
logsize(k)=log(q)*k;
rate(k)=logsize(k)/n;
end

%d=1:1:floor(1+sqrt(q));
%rate=d*log(q)/(q);
%delta=(1-(d-1).^2./q);
%plot(delta,rate)

end

