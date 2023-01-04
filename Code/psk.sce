pi=3.14
t=0:0.001:1;
f1=input('Enter the carrier frequency: ');
f2=input('Enter the no of pulses: ');
x=sin(2*pi*f1*t);
y=squarewave(2*pi*f2*t);
z=x.*y;
subplot(3,1,1);
plot(t,x);
title('Carrier Freq');
xlabel('time');
ylabel('amplitude');
subplot(3,1,2);
plot(t,y);
xlabel('time');
ylabel('amplitude');
subplot(3,1,3);
plot(t,z);
xlabel('time');
ylabel('amplitude');

