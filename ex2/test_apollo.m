t0=[0,50];
x0=[1.2 0 0 -1.04935751];
[t,x]=ode45('apollo',t0,x0);
plot(x(:,1),x(:,3));
title('x,y��켣ͼ');