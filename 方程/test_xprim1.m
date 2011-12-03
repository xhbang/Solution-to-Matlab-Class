[t,x]=ode45('xprim1',[0,20],[30;20]);
plot(t,x);
xlabel('time t0=0,tt=20');
ylabel('x values x1(30),x2(0)=20');