clc;
clear all;
pkg load signal;

Ec=2;Em=1;

Fm=5;Fc=50;
t=[-1:0.001:1];
m=Em/Ec;

em=Em*cos(2*pi*Fm*t);
ec=Ec*cos(2*pi*Fc*t);
S = Ec*[1 + m*cos(2*pi*Fm*t)].*cos(2*pi*Fc*t) ; 

%CARRIER SIGNAL%
subplot(4,1,2);
plot(t,ec);
xlabel('Time UI20CS61');
ylabel('Amplitude UI20CS61');
title('Carrier Signal UI20CS61');


%AM Wave%
subplot(4,1,3);
plot(t,S);
xlabel('Time UI20CS61');
ylabel('Amplitude UI20CS61');
title('AM Wave UI20CS61');

%MESSAGE SIGNAL%
subplot(4,1,1);
plot(t,em);
xlabel('Time UI20CS61'); 
ylabel('Amplitude UI20CS61');
title('Message Signal UI20CS61');


%RECONSTRUCTION%
D = S.*ec; 
[B,A] = butter(5,1/22,'low'); 
F = filter(B,A,D);
subplot(4,1,4);
plot(t,F);
xlabel('Time UI20CS61');
ylabel('Amplitude UI20CS61');
title('Reconstructed Signal UI20CS61');