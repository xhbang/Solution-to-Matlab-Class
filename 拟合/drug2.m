t=[0.25,0.5,1,1.5,2,3,4,6,8];
y=[19.21,18.15,15.36,14.10,12.89,9.32,7.45,5.24,3.01];
y2=log(y);
a=polyfit(t,y2,1);
ti=[0:0.25:8];
y3=polyval(a,ti);
yi=exp(y3);
plot(t,y,'k+',ti,yi,'r');
