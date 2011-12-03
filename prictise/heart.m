!f=(x^2 + (9/4)*y^2+z^2-1)^3-(x^2)*(z^3)-(9/80)*(y^2)*(z^3);
!f=@(x,y,z)(x^2 + (9/4)*y^2+z^2-1)^3-x^2^z^3-(9/80)*y^2^z^3;
!f=@(x,y,z)(x.^2 + (9/4)*y.^2+z.^2-1)^3-(x.^2)*(z.^3)-(9/80)*(y.^2)*(z.^3);
f=@(x,y,z)(x.^2 + (9/4)*y.^2 + z.^2 - 1).^3 - x.^2.*z.^3 - (9/80)*y.^2.*z.^3
t=linspace(-3,3,50);
[x,y,z]=meshgrid(t,t,t);
v=f(x,y,z);
h=isosurface(x,y,z,v,0);
p=patch(h);
!pinkmap=squr(2/3*gray+1/3*hot);
!set(p,'facevertexcdata',jet(size(h.vertices,1)),'edgecolor','flat','facecolor','black');
set(p,'facecolor','black',edgecolor','w');
daspect([1 1 1]);
!camlight;
!lighting phong;
!rotated 3d;
!axis equal;
view(3);