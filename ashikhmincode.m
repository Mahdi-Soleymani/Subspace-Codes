function [m,logsize]=ashikhmincode()

m=1:1:9;
logsize=zeros(1,length(m));
for i=1:1:length(m)
    logsize(i)=log(2^m(i)*N_ashikhmin(2*m(i),m(i)));
end

end
    