function xdot=fish(t,x)
r=2;s=0.8;a=0.02;b=0.0002;
xdot=[r*x(1)-a*x(1)*x(2),-s*x(2)+b*x(1)*x(2)];
