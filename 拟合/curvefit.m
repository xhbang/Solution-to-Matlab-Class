xdata=[0:.1:2]                      
ydata=[5.8955 3.5639 2.5173 1.9790 1.8990 1.3938 1.1359 1.0096 1.0343 0.8435 0.6856 0.6100 0.5392 0.3946 0.3903 0.5474 0.3459 0.1370 0.2211 0.1704 0.2636];
a0=[1,1,1,0];
[a,resnorm,residual,flag,output]=lsqcurvefit('myfun1',a0,xdata,ydata);
xi=linspace(0,2,200);
yi=myfun1(a,xi);
plot(xdata,ydata,'ro',xi,yi)
xlabel('x'),ylabel('y=f(x)'),
title('nonlinear curve fitting')


