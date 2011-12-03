%ex3-rossler
global a;
global b;
global c;
b=2;
c=4;
t0=[0,300];
x0=[0 0 0];
k=1;
for a=0:0.13:0.65;
    [t,x]=ode45('rossler',t0,x0);
    figure(k);
    subplot(1,2,1);
    plot3(x(:,1),x(:,2),x(:,3),'r');
    title('��άͼ��');
    subplot(1,2,2);
    plot(t,x(:,1),t,x(:,2),t,x(:,3),'y');
    title('������');
    k=k+1;
end