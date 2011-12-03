function [num,y_j,L,T]=simu1(x,y,t,eps)
k=0;
while k<1000          
   p=90*k*t-x;
   q=120-y;
   d1=p/(p^2+q^2)^0.5;
   d2=q/(p^2+q^2)^0.5;
   x=x+450*t*d1;
   y=y+450*t*d2;
   if (abs(q)<eps)
      break;
   end
   k=k+1;
end
num=k;
L=x;
y_j=y;
T=L/90;
