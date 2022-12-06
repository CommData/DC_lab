//Aim==> Write a program to calculate S/N ration and study Probability of error.

//Program==>

xmax= input("Enter the value of xmax");
p=input("Enter the value of p");
n=input("Enter the value of n");
EBNo=10:0.1:20;
y=sqrt(EBNo);
pe=0.5*erfc(0.5*y);
SNR=3*(2^(2*n)*p)/(xmax^2);
plot(EBNo,pe);
xlabel('Eb/No');
ylabel('POE');
title('Graph of Eb/No versus Probability of error');
disp(SNR);

