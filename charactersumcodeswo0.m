function [delta, logsize] = charactersumcodeswo0()
%function [delta, rate] = charactersumcodeswo0()

p=127;
q=p^1;
n=q-1;

k_max=floor((n-1)/sqrt(q)+1);
delta=zeros(1,k_max);
rate=zeros(1,k_max);

for k=1:1:k_max
%delta(k)=1-q*k^2/n^2;
delta(k)=1-((k-1)*sqrt(q)+1)^2/n^2;
%rate(k)=log(q)*ceil(k*(p-1)/p)/n;
%size
logsize(k)=log(q)*ceil(k*(p-1)/p);
rate(k)=logsize(k)/n;
end

end
