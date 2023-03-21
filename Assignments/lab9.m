clc;
clear all;
pkg load signal;
pkg load communications;

w=(-12:0.01:12);
T=10;
s1=(T/4)*sinc(w*T/4).^2;
subplot(2,1,1);
plot(w,s1);
xlabel('t');
ylabel('amp');
axis([-10 10]);
title('polar signal UI20CS61');


s2=(T/4)*sinc(w*T/4).^2.*sin(w*T/2).^2;
subplot(2,1,2);
plot(w,s2);
xlabel('t');
ylabel('amp');
axis([-10 10]);
title('bipolar signal UI20CS61');

a1=trapz(w,s1)
a2=trapz(w,s2)