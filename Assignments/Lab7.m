clc;
clear all;
close all;
figure 1
t=[-1:0.01:1];

fm=1;
fc=5;
fs=10*fc;
Em=5;
Ec=5;
m=Em/Ec;

em=Em.*cos(2*pi*t*fm);
subplot(5,2,1);
plot(t,em);
xlabel('Time');
ylabel('Amplitude');
title('message signal UI20CS61');

subplot(5,2,2);
plot(t,abs(fft(em)));
xlabel('Time');
ylabel('Amplitude');
title('message signal Spectrum UI20CS61');

ec=Ec.*cos(2*pi*t*fc);
subplot(5,2,3);
plot(t,ec);
xlabel('Time');
ylabel('Amplitude');
title('carriar signal UI20CS61');

subplot(5,2,4);
plot(t,abs(fft(ec)));
xlabel('Time');
ylabel('Amplitude');
title('carriar signal Spectrum UI20CS61');

s=Ec*[1 + m*cos(2*pi*fm*t)].*cos(2*pi*fc*t);
subplot(5,2,5);
plot(t,s);
xlabel('Time');
ylabel('Amplitude');
title('modulated signal UI20CS61');

subplot(5,2,6);
plot(t,abs(fft(s)));
xlabel('Time');
ylabel('Amplitude');
title('modulated signal Spectrum UI20CS61');

em1=Em.*sin(2*pi*t*fm);
ec1=Ec.*sin(2*pi*t*fc);
DSB = em.*ec;
SSB = em1.*ec1 + DSB;
subplot(5,2,7);
plot(t,DSB);
xlabel('Time');
ylabel('Amplitude');
title('DSB signal UI20CS61');
subplot(5,2,9);
plot(t,SSB);
xlabel('Time');
ylabel('Amplitude');
title('SSB signal UI20CS61');

subplot(5,2,8);
plot(t,abs(fft(DSB)));
xlabel('Time');
ylabel('Amplitude');
title('DSB signal Spectrum UI20CS61');
subplot(5,2,10);
plot(t,abs(fft(SSB)));
xlabel('Time');
ylabel('Amplitude');
title('SSB signal Spectrum UI20CS61');