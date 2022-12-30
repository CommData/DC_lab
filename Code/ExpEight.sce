fc1=input('Enter frequency of 1st sin wave carrier'); 
fc2=input('Enter frequency of 1st sin wave carrier');
fp=input('Enter the periodic bpm');
amp=input('Enter the amplitude (both carrier and bpm)');
amp=amp/2;
t=0:0.001:1;
c1=amp.*sin(2*3.14*fc1*t);
c2=amp.*sin(2*3.14*fc2*t);
subplot(4,1,1);
plot(t,c1); xlabel('time');
ylabel=('amplitude');
title('carrier 1 wave');
subplot(4,1,2);
plot(t,c2);
xlabel('time'); ylabel=('amplitude');
title('carrier 2 wave');
m=amp.*squarewave (2*3.14*fp*t)+amp;
subplot(4,1,3);
plot(t,m); 
xlabel('time');
ylabel=('amplitude');
 title('square wave');
for i=0:1:1000
if m(i+1)==0; mm(i+1)=c1(i+1);
else
mm(i+1)=c2(i+1);
end
end
subplot(4,1,4);
plot(t,mm);
xlabel('time');
ylabel=('amplitude');
title('fsk wave');
