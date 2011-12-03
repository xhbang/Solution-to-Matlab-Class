t=[0.25,0.5,1,1.5,2,3,4,6,8];
y=[19.21,18.15,15.36,14.10,12.89,9.32,7.45,5.24,3.01];
k0=0.2;
[a,resnorm,residual,flag,output]=lsqcurvefit('myfun2',k0,t,y);
ti=[0:0.25:8];
yi=myfun2(a,ti);
plot(t,y,'k+',ti,yi);