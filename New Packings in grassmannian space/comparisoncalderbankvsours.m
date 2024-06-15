function [n,dminpow2]=comparisoncalderbankvsours()
%%calderbank parameters
k=5;
i=k+1:1:15;

cal=zeros(1,length(i));
ours=zeros(1,length(i));
n=zeros(1,length(i));
dmin=zeros(1,length(i));
for j=1:1:length(i)
    cal(j)=calderbankgeneralm(i(j),k);%%logsize of calderbank
    %%%%%% our construction parmeter
    m=2^(k-1);%%% since ours is complex
    %%% finding our blocklength 
    n(j)=2^(i(j)-1);
    while(isprime(n(j))==0)
        n(j)=n(j)-1;
    end
    [df,gf]=ourcode(m,n(j));
    ours(j)=df;
    dmin(j)=gf;
end
plot(2.^i,cal);
hold on;
plot(2.^i,ours);
dminpow2=dmin.^2;
end
    
    