x1=log(1+sqrt(1-y.^2))./y-sqrt(1-y.^2);
x2=log(1-sqrt(1-y.^2))./y+sqrt(1-y.^2);
plot(x1,y,x2,y)
axis([-10 10 -1 1])