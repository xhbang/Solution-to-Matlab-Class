x=1:10;
xi=[1:0.1:10];
a0=[2,2];
y=[2615 1943 1494 1087 765 538 484 290 226 204];
a1=polyfit(x,y,2);
y1=polyval(a1,xi);
[a2,resnorm1,residuan1]=lsqcurvefit('fun2',a0,x,y);
y2=fun2(a2,xi);
[a3,resnorm2,residuan2]=lsqcurvefit('fun3',a0,x,y);
y3=fun3(a3,xi);
plot(x,y,'k+',xi,y1,'y',xi,y2,'r-',xi,y3,'r');