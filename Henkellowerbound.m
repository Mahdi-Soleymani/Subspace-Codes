function []=Henkellowerbound(n,m)
rate=.01:.01:6;
delta=(4/pi^2)*(0.5.^((n*rate)/((n-m)*m)))/m;
%delta=(8*2.^((-n*rate)/((n-1)*log(2))))/pi^2;
%plot(rate,delta);
plot(delta,rate*log(2));
end