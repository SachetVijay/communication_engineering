clc;
pkg load signal;
t=[-1:0.001:1];
fm=1;
a=sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,a,'r');
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');

fc=20;
b=sawtooth(2*pi*fc*t);
subplot(4,1,2);
plot(t,b,'b');
xlabel('Time');
ylabel('Amplitude ');
title('Sawtooth Signal');

subplot(4,1,3);
plot(t,a,'r',t,b,'b');
xlabel('Time');
ylabel('Amplitude');
title('Comparison of the two Signals');

c=a>=b;
subplot(4,1,4);
plot(t,c,'k');
axis([-1 1 -1 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('PWM Signal');
