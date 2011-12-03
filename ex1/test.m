clear
n=1;
for k=100:999
   a=fix(k/100);b=fix(k/10)-10*a;c=k-10*b-100*a;
   if k==a^3+b^3+c^3;
       num(n)=k;
       n=n+1;
   else k=k+1;
   end
end
