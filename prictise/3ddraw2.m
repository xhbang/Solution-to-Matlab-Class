x=-3:0.1:3;y=-3:0.1:3;z=-3:0.1:3; 
[x,y,z]=meshgrid(x,y,z); 
f=((x-y).^2-1)+((y-z).^2-1)+((z-x).^2-1); 
p=patch(isosurface(x,y,z,f,0)); 
set(p, 'FaceColor', 'red', 'EdgeColor', 'none'); 
daspect([1 1 1])
view(3)
camlight; lighting phong