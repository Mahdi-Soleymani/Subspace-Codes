function []=bargtest(m)
delta=0.01:0.01:1;
beta=2;
rc=-beta*m*log(delta/sqrt(m));
deltag=0.01:0.01:pi/2;
rg=-beta*m*log(sin(deltag/sqrt(m)));
plot(delta,rc);
hold on;
%plot(deltag,rg);
end