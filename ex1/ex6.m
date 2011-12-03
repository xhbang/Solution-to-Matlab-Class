%where am i??????????
%ok now
n=1;
for i=100:999
    x=i;
    a=fix(x/100);
    x=x-100*a;
    b=fix(x/10);
    x=x-10*b;
    c=x;
    if a^3+b^3+c^3==i
       result(n)=i;
       n=n+1;
    end
end
result