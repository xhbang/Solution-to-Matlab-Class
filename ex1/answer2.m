%answer 5-1
[x,y]=meshgrid(-10:0.1:10);
z=sin(pi*sqrt(x.*x+y.*y));
mesh(x,y,z)
