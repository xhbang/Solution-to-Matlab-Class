%ex1
x=0:0.1:1;
h=0.1;
y1=dsolve('Dy=y-2*x/y','y(0)=1','x');
y2(1)=1,y3(1)=1;y4(1)=1;
for k=1:10
    %向前欧拉y2
    y2(k+1)=y2(k)+h*(y2(k)-2*x(k)/y2(k));
    %向后欧拉y3
    valt=solve('y=valy+0.1*(y-2*valx/y)','y');
    valy=y3(k);
    valx=x(k);
    y3(k+1)=eval(valt(1));
    %改进的欧拉y4
    k1=y4(k)-2*x(k)/y4(k);
    k2=y4(k)+h*k1-2*x(k)/(y4(k)+h*k1);
    y4(k+1)=y4(k)+h/2*(k1+k2);
end
plot(x,y3,'r',x,y2,'y-',x,y4,'b--'),hold on
%plot(x,y2,'r'),hold on
ezplot(y1,[0,1])