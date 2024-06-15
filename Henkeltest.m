function []=Henkeltest(m)
beta=2;
%dc=0.01:.01:pi/2;
%rbarg=2*m*log(sqrt(m)./dc);
delta=0.01:0.01:2;
rbarg=-0.5*beta*m*log(delta/2);
r=0.01:0.01:15;
dhenkel=(8/pi^2)*(2.^(-r./m)./m);

%dhenkelasym=(m./2.^(r/m)).^(0.5);

plot(delta,rbarg);
hold on;
plot(dhenkel,r*log(2));

%plot(dhenkelasym,r*log(2));
end