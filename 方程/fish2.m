r=2,s=0.8,b=0.0002,a=0.02;
x0=100;
%?
x1=12000;
y0=10;
y1=200;
[x,y]=meshgrid(x0:10:x1,y0:1:y1);
z=r*log(y)-a*y+s*log(x)-b*x;
contour(x,y,z,20,'k');
axis([0 x1 0 y1]);