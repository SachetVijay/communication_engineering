clc;
clear all;

t=[-1:0.001:1];
fm=5;
fc=20;
fs=2*fc;
em=1;
ec=5;
a=em*cos(2*pi*fm*t);

subplot(4,1,1);
plot(t,a);
xlabel('Time UI20CS61');
ylabel('Amplitude UI20CS61');
title('Message Signal UI20CS61');

b=ec*cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,b);
xlabel('Time UI20CS61');
ylabel('Amplitude UI20CS61');
title('Carrier Signal UI20CS61');


m=em/ec 
y= ammod(a,fc,fs);
subplot(4,1,3);
plot(t,y);
title('Modulated Signal_UI20CS61');
xlabel('Time_UI20CS61');
ylabel('Amplitude_UI20CS61');

x= amdemod(y,fc,fs);
subplot(4,1,4);
plot(t,x);
title('Demodulated Signal_UI20CS61');
xlabel('Time_UI20CS61');
ylabel('Amplitude_UI20CS61');