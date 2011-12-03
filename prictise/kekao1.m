c1=5;c2=12;c3=16;  
g1=20/60;g2=30/60;g3=40/60;
Lrnd;  % Random function Lrnd gets a random life(three)
yrnd;  % Random function yrnd gets a random delate(one)
lm=sort(l);
U=[];t=[];
for j=1:50
if lm(1)<lm(2)
   U(j)=c1*(y+g1*60)+c2*g1+c3;
elseif lm(1)==lm(2)<lm(3)
   U(j)=c1*(y+g2*60)+c2*g2+2*c3;
else
   U(j)=c1*(y+g3*60)+c2*g3+3*c3;
end
Lrnd1;%(one)
t(j)=lm(1)+y/60+l1;
L=[lm(2),lm(3),t(j)];
lm=sort(L);
yrnd;
end
U;t; zU=sum(U);
C=zU/t(50)
