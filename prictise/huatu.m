x=[0,0];                          
axis('equal'); 
axis([0,140,0,140]);grid on
hold on
t=0.001; %步长
while (abs(x(2)-120)>0.1)   % 终止条件(<)
   for k=1:280
   p=90*k*t-x(1);
   q=120-x(2);
   d1=p/(p^2+q^2)^0.5;
   d2=q/(p^2+q^2)^0.5;
   x(1)=x(1)+450*t*d1;
   x(2)=x(2)+450*t*d2;
   x1(1)=90*k*t;
   x1(2)=120;
   h1=line('color',[0,0.2,0.4],'linewidth',2);
   h2=line('color',[0,0.6,0.9],'linewidth',3);
   set(h1,'xdata',x1(1),'ydata',x1(2));
   set(h2,'xdata',x(1),'ydata',x(2));
   end
end
hold on
