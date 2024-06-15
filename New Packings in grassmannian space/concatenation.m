function []=concatenation(n,m)

k=1;
K=1+floor(sqrt(n/m))
%k=1+floor(sqrt((n)/(2*m)));
%k=1:1:K;
q=n;
p=n;
%logsize=(k-1)*log(q)+log(floor(q/m));
%normalizeddmin=sqrt(1-((m*(k-1).^2)/n));
delta_Hamming=.01:.01:.99;
%Rates_matrix=zeros(K,length(delta_Hamming));
%for k=1:1:K
    rate_Grassmann=((k-1)*log(q)+log(floor(q/m)))/n;
    normalized_dmin_Grassmann=sqrt(1-((m*(k-1).^2)/n));
    
     
    %AG_length=exp((k-1)*log(q)+log(floor(q/m)));
    AG_length=q^2;
    AG_length=25;
    r_AG=1-delta_Hamming-(1/(sqrt(AG_length)-1));
    
    
    over_all_rate=r_AG*rate_Grassmann;
    X=delta_Hamming*(1-sqrt(1-normalized_dmin_Grassmann.^2));
    overall_dmin_grassmann=sqrt(1-(1-X).^2);
    
    plot(overall_dmin_grassmann,over_all_rate);
    hold on
    legend(strcat(strcat('n= ' , num2str(n)),strcat('k= ' , num2str(k))))
    %Rates_matrix(k,:)=over_all_rate;
    
    
    
%end
%plot(overall_dmin_grassmann,max(Rates_matrix));
end
    
        
        
    
