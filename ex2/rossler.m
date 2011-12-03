%都标记成global
function f=rossler(t,x)
global a;
global b;
global c;
b=2,c=4;
f=[-x(2)-x(3);x(1)+a*x(2);b+x(3)*(x(1)-c)];