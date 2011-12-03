function [c,err,yc]=bisect(f,a,b,delta)
%f是要求解的函数
%a和b分别是有根区间的左右限
%delta是允许的误差界
%c为所求近似解
%yc为函数f在c的误差估计
if nargin<4 delta=1e-5;end
    ya=feval('f',a);
    yb=feval('f',b);
if yb==0,c=b,
    return,
end
if ya*yb>0
disp('(a,b)不是有根区间');
return,
end
max1=1+round((log(b-a)-log(delta))/log(2));
for k=1:max1
    c=(a+b)/2;
    ye=feval('f',c);
    if yc==0 a=c;b=c;break,
    elseif yb*yc>0
    b=c;yb=yc;
    else
    a=c;ya=c;
    end
    if(b-a)
    end
k,c=(a+b)/2,err=abs(b-a),yc=feval('f',c)