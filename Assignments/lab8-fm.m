clc;
#Run only in matlab online
close all;
Ec=1;
Em=1;
fm=5;
fc=100;
B=10;
fs=10000;
t=(-0.5:(1/fs):0.5);
freqdev = B*fm;
ms= Em.*cos(2*pi*fm*t);
subplot(5,1,1);
plot(t,ms);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal  UI20CS61');

cs= Ec.*cos(2*pi*fc*t);
subplot(5,1,2);
plot(t,cs);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal  UI20CS61');

s = cos(2*pi*fc*t + (B.*sin(2*pi*fm*t)));
subplot(5,1,3);
plot(t,s);
xlabel('Time');
ylabel('Amplitude');
title('FM Signal UI20CS61');

z=fmmod(ms,fc,fs,freqdev);
subplot(5,1,4);
plot(t,z);
xlabel('Time');
ylabel('Amplitude');
title('FM Signal Inbuilt  UI20CS61');

y = fmdemod(s,fc,fs,freqdev);
subplot(5,1,5);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Reconstructed Signal  UI20CS61');