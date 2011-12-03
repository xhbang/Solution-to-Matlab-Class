%sq.m
a=input('the num');
x1=a;
i=1;
dis=a;
while(dis>=10e-5)
   x2=(x1+a/x1)/2;
   dis=abs(x2-x1);
   x1=x2;
   i=i+1
end
x2