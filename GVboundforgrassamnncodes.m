function [rate,delta]=GVboundforgrassamnncodes(beta,m)
delta=0.01:0.01:1;
rate=-beta*m*log(delta);
plot(delta,rate);
end