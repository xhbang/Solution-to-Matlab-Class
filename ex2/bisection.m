function rtn=bisection(fx,xa,xb,n,delta)
% Bisection Method
% The first parameter fx is a external function with respect to viable x.
% xa is the left point of the initial interval
% xb is the right point of the initial interval
% n is the number of iterations.
x=xa;fa=eval(fx);
x=xb;fb=eval(fx);
disp(' [ n xa xb xc fc ]');
for i=1:n
xc=(xa+xb)/2;x=xc;fc=eval(fx);
%X=[i,xa,xb,xc,fc];
%disp(X),
if fc*fa<0
xb=xc;
else xa=xc;
end
if (xb-xa)<delta,break,end
end
xb