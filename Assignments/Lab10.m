clc;
close all;
pkg load signal;
pkg load communications;
t=[-1:0.01:1];
Ac=1,Am=1,fm=1,fc=10;
B=5,fs=50*fc;
freqdev = B*fm;
ms= Am*cos(2*pi*fm*t)+1;
subplot(4,1,1);
plot(t,ms);
xlabel('time');
ylabel('amplitude');
title('message signal_UI20CS61');

subplot(4,1,2);
stem(t,ms);
xlabel('time');
ylabel('amplitude');
title('Sampled signal_UI20CS61');

y=floor(ms/0.2);
subplot(4,1,3);
plot(t,y) ;
xlabel('time');
ylabel('amplitude');
title('quantized signal_UI20CS61');

z=dec2bin(y);
disp(z);
v=bin2dec(z);
disp(v);

w=filter(1,1,v);
[B,A] = butter(5,1/22,'low');
F = filter(B,A,w);
subplot(4,1,4);
plot(t,F);
xlabel('time');
ylabel('amplitude');
title('reconstructed signal_UI20CS61');