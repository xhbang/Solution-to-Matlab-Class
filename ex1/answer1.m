E=eye(3);R=rand(3,2);O=zeros(2,3);
 S=diag([1,1]); %S = 1     0
              %     0     1
A=[E,R;O,S];
B=A^2;
C=[E,R+R*S;O,S^2];

%ans = 

   % 1.0000         0         0    1.9003    0.9720
   %      0    1.0000         0    0.4623    1.7826
   %      0         0    1.0000    1.2137    1.5242
   %      0         0         0    1.0000         0
   %      0         0         0         0    1.0000
if C==B
    disp('A^2=[E R+RS;O S^2]');
else  
    disp('The setence is wrong')
    end
