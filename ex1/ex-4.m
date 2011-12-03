clear
%1
t1=[-5,5];
subplot(2,2,1);
ezplot('exp(-t1.^2)',t1);
title('概率曲线');
%
subplot(2,2,2);
t2=[0:0.02:2*pi];
polar(t2,sin(2*t2));
title('四叶玫瑰线');
%
subplot(2,2,3);
%arrge is important
t3=[-0.5:0.01:0.5];
x3=3*t3./(1+t3.^3);
y3=3*t3.^2./(1+t3.^3);
plot(x3,y3);
title('叶形线');
%
subplot(2,2,4);
y=[0.01:0.01:1];
%becareful with '.'
x41=log((1+sqrt(1-y.^2))./y)-sqrt(1-y.^2);
x42=log((1-sqrt(1-y.^2))./y)+sqrt(1-y.^2);
plot(y,x41,y,x42);
title('曳物线');