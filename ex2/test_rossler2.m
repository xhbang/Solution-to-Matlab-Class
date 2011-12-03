global a;
global b;
global c;
b=2;
c=4;
t0=[0,200];
k=1;
for a=0:0.02:0.65;
          [t,x]=ode45('rossler',t0,[0,0,0]);
          figure(k);
          subplot(1,2,1);
          plot(t,x(:,1),'r',t,x(:,2),'g',t,x(:,3),'b');
          title('dimension 3');
          xlabel('t');
          subplot(1,2,2);
          plot3(x(:,1),x(:,2),x(:,3));
          xlabel('x');ylabel('y');zlabel('z');
          k=k+1;
end
