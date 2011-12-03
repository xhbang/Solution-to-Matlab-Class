function f=competition(t,x)
r1=1;
r2=1;
N1=100,N2=100;
%a1=1.5;
%a2=0.7;
a1=2;
a2=0.5;
f=[r1*x(1)*(1-x(1)/N1-a1*x(2)/N2);r2*x(2)*(1-x(2)/N2-a2*x(1)/N1)]