[t,y]=ode23('vapol',[0,20],[3,0]);
y1=y(:,1);
y2=y(:,2);
%plot(t,y1,t,y2,'r')
plot(y1,y2)
grid on