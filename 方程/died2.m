x(1)=1;y(1)=1;z(1)=1;
%(��ʼ�㣩
for k=1:20
   x(k+1)=x(k)^3-x(k)^2-1;%j1 (x)
   y(k+1)=(y(k)^2+y(k)+1)^(1/3);  %j2 (y)
   z(k+1)=1+1/z(k)+1/z(k)^2;  %j3 (z)
end
x,y,z