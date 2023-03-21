clc;
clear all;
figure;

t=[-10:0.1:10];
a = sin(t);
subplot(3,2,1);
plot(t,a);
xlabel('t_UI20CS61');
ylabel('amp_UI20CS61');
%axis([-10 10 -1 1]);
title('sine wave');

t=[-10:0.1:10];
a = cos(t);
subplot(3,2,2);
plot(t,a);
xlabel('t_UI20CS61');
ylabel('amp_UI20CS61');
%axis([-10 10 -1 1]);
title('cos wave');


t=[-10:0.1:10];
a = tan(t);
subplot(3,2,3);
plot(t,a);
xlabel('t_UI20CS61');
ylabel('amp_UI20CS61');
%axis([-10 10 -1 1]);
title('tan wave');

t=[-10:0.1:10];
a = square(t);
subplot(3,2,4);
plot(t,a);
xlabel('t_UI20CS61');
ylabel('amp_UI20CS61');
%axis([-10 10 -1 1]);
title('square wave');


t=[-10:0.1:10];
a = sawtooth(t,0);
subplot(3,2,5);
plot(t,a);
xlabel('t_UI20CS61');
ylabel('amp_UI20CS61');
%axis([-10 10 -1 1]);
title('sawtooth wave');

t=[-10:0.1:10];
a = sawtooth(t,0.5);
subplot(3,2,6);
plot(t,a);
xlabel('t_UI20CS61');
ylabel('amp_UI20CS61');
%axis([-10 10 -1 1]);
title('sawtooth wave');

