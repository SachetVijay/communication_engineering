clc;
clear all;
close all;
figure;

t=0:0.1:3;

f=pi/4;

a = sin(2*pi*t);

t1=0:0.05:3;
b=sin(2*pi*t1);

t2=0:0.025:3;
c=sin(2*pi*t2);

t3=0:0.2:3;
d=sin(2*pi*t3);


subplot(3,3,2);
plot(t,a);
xlabel('time_UI20CS61');
ylabel('amplitude_UI20CS61');
title('UI0CS61');


subplot(3,3,4);
stem(t1,b);
xlabel('time_UI20CS61');
ylabel('amplitude_UI20CS61');
title('perfect sampled');

subplot(3,3,5);
stem(t2,c);
xlabel('time_UI20CS61');
ylabel('amplitude_UI20CS61');
title('over sampled');

subplot(3,3,6);
stem(t3,d);
xlabel('time_UI20CS61');
ylabel('amplitude_UI20CS61');
title('under sampled');

h1=filter(f,1,b);
subplot(3,3,7);
plot(t1,h1);
title('reconstructed perfect sampled');

h2=filter(f,1,c);
subplot(3,3,8);
plot(t2,h2);
title('reconstructed over sampled');

h3=filter(f,1,d);
subplot(3,3,9);
plot(t3,h3);
title('recostructed under sampled');



