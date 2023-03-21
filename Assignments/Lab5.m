clc;
clear all;
fc = 20; 
pkg load signal;

fm =2;
fs = 1000; % sampling frequency

t=1;
a=1/fs;
n=[0:a:t];
n=n(1:end - 1);
duty = 10;
per = fs/fc;
on_t= per/duty;

s= square(2*pi*fc*n,duty);
s(find(s<0))=0;

m=sin(2*pi*fm*n);
A=1;
c=A.*sawtooth(2*pi*fc*n);
ppm=zeros(1,length(s));

id= find(c>m);
idd = diff(id);
iddd = find(idd ~= 1);
temp(1) = id(1);
temp(2:length(iddd)+1) = id(iddd +1);

for i = 1:length(temp)
  ppm(temp(i): temp(i) +on_t -1 ) = 1;
end

subplot (3,1,1) ;plot (n,m, 'LineWidth' ,2) ;
xlabel('Time_UI20CS61'); 
ylabel('Amplitude_UI20CS61') ;
title('Message Signal and Sawtooth Signal_UI20CS61');
hold on;


plot(n,c,'r','LineWidth' ,2) ;
grid on;

subplot(3,1,2);
plot(n,s, 'm','LineWidth',2);
xlabel('Time_UI20CS61'); 
ylabel('Amplitude_UI20CS61');
title('Periodic Pulse Train_UI20CS61');
grid on;
ylim([-0.2 1.2]);
subplot (3,1,3) ;plot(n,ppm, 'k','LineWidth',2);
xlabel('Time_UI20CS61'); 
ylabel('Amplitude_UI20CS61') ;
title('PPM Signal_UI20CS61'); 
grid on; 
ylim([-0.2 1.21]);