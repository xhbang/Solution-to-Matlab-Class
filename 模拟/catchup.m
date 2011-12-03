v=1;
dt=0.05;
d=20;  % x=[x(1),x(2),x(3),x(4),x(5),x(6),x(7),x(8)]
x=[0 0 0 10 10 10 10 0];
x(9)=x(1);
x(10)=x(2);
hold on
axis('equal');
axis([0 10 0 10]);
while(d>0.1)
   for i=1:2:7
      d=sqrt((x(i)-x(i+2))^2+(x(i+1)-x(i+3))^2);
      x(i)=x(i)+v*dt*(x(i+2)-x(i))/d;
      x(i+1)=x(i+1)+v*dt*(x(i+3)-x(i+1))/d;
      plot(x(i),x(i+1),'.r')
   end
   x(9)=x(1);x(10)=x(2);
end
hold on
