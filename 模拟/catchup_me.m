x=[0];
y=[0];
axis([0,200,0,200]);grid on;
hold on;
dt=0.001;
t=0;
i=1;
eps=0.1;
while(abs(y(i)-120)>eps)
    t=t+dt;
    p=90*t-x(i);
    q=120-y(i);
    d=p^2+q^2;
    d1=p/d^0.5;
    d2=q/d^0.5;
    i=i+1;
    x2(i)=90*t;
    y2(i)=120;
    x(i)=x(i-1)+450*dt*d1;
    y(i)=y(i-1)+450*dt*d2;
    plot(x(i),y(i),'.');
    plot(x2(i),y2(i),'.r');
end
hold on
    