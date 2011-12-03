x=[0];
y=[0];
x2=[0];
y2=[120];
axis([0,200,0,200]);grid on;
hold on;
dt=0.001;
t=0;
i=1;
eps=0.1;
while(abs(y(i)-y2(i))+abs(x(i)-x2(i))>eps)
    t=t+dt;
    p=x2(i)-x(i);
    q=y2(i)-y(i);
    d=(p^2+q^2)^0.5;
    dcos=p/d;
    dsin=q/d;

    x(i)=x(i-1)+450*dt*d1;
    y(i)=y(i-1)+450*dt*d2;
%     关键是理清角度的关系
    x2(i)=x2(i-1)+90*dt*d2;
    y2(i)=y2(i-1)+90*dt*(-d1);
    
    plot(x(i),y(i),'.');
    plot(x2(i),y2(i),'.r');
    i=i+1; 
end
hold on
    