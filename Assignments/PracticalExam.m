clc;
clear all;
pkg load communications

f=[-1:0.01:1];

Tb=2;

x1=(sinc(pi*f*Tb/2)).^2;

x2=(sin(pi*f*Tb).^2);

A=(Tb/4)*x1;

B=(Tb/4)*x1.*x2;

plot(f,A,'r',f,B,'b');
xlabel("Frequency");
ylabel("Sy(w)");
legend('Polar signal','Bipolar signal');
title('Power Spectral Density Function - UI20CS61 Sachet Vijay');

trapz(f,A)
trapz(f,B)