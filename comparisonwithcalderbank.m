%function [mydist,Hessamsdist,myprimes,Hessamsprimes]=comparisonwithcalderbank()
function [calderbanklogsize,mylogsize,Hessamslogsize,myprimes,Hessamsprimes]=comparisonwithcalderbank()
i_max=10;
calderbanklogsize=zeros(1,i_max);
mylogsize=zeros(1,i_max);
mydist=zeros(1,i_max);
Hessamslogsize=zeros(1,i_max);
Hessamsdist=zeros(1,i_max);
myprimes=zeros(1,i_max);
Hessamsprimes=zeros(1,i_max);
for i=2:1:i_max
    %%%MINE
    p=max(primes(2^(i-1)));
    myprimes(i)=p;
    [delta,logsize] = charactersumcodes(p);
    mylogsize(i)=logsize(max(find(delta>0.5)));
    mydist(i)=delta(max(find(delta>0.5)));
    %HESSAMS
    p=max(primes(2^(i-1)+1));
    Hessamsprimes(i)=p;
    [delta,logsize] = charactersumcodes(p);
    Hessamslogsize(i)=logsize(max(find(delta>0.5)));
    Hessamsdist(i)=delta(max(find(delta>0.5)));
    
    calderbanklogsize(i)=calderbankth1(i);
end
%plot([1:1:i_max],calderbanklogsize,[1:1:i_max],mylogsize,[1:1:i_max],Hessamslogsize);
end