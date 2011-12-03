%ex1
E=eye(3);
R=rand(3,2);
O=zeros(2,3);
v=[1,1];
S=diag(v);
A=[E,R;O,S];
X=[E,R+R*S;O,S^2];
B=A^2;
%ans = 

   % 1.0000         0         0    1.9003    0.9720
   %      0    1.0000         0    0.4623    1.7826
   %      0         0    1.0000    1.2137    1.5242
   %      0         0         0    1.0000         0
   %      0         0         0         0    1.0000
if B==X
    disp('equal')
else
    disp('not equal')
end