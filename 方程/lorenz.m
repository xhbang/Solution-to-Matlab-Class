function xdot=lorenz(t,x)
b=8/3;c=10;r=28;
xdot=[-b,0,x(2);0,-c,c;-x(2),r,-1]*x;
