x=[-5:0.2:5];
y=x;
[X,Y]=meshgrid(x,y);
Z=-20*exp(-0.2*sqrt(0.5*(X.^2+Y.^2)))-exp(0.5*(cos(2*pi.*X)+cos(2*pi.*Y)))+22.713;
mesh(X,Y,Z)