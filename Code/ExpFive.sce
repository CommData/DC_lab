//Experiment 5
//Aim ==> WAP to display PDF of different random variable
//13 December 2022
u=input('Mean');
v=input('Variance');
x=-10:0.1:10;
n=(1/(sqrt(2*3.14*v))*exp(-(x-u)^2/(2*v)));
figure(1);
plot(x,n);
title('Gaussian Random Variable');

a=input('Minimum Value of RV');
b=input('Maximum Value of RV');
x=a-5:0.001:b+5;
for i=1:length(x);
    if x(i)>=a&x(i)<=b
        u(i)=1/(b-a);
    else
        u(i)=0;
    end;
end;
figure(2);
plot(x,u);
title('Uniform Random Variable');

