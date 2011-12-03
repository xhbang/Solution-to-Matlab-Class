t1=-3:0.001:3;y1=exp(-t1.*t1);subplot(2,2,1);plot(t1,y1);title('概率曲线');
t2=0:0.01:2*pi;y2=sin(2*t2);subplot(2,2,2);polar(t2,y2);title('四叶玫瑰线');
t3=-0.5:0.01:0.5;x3=3*t3./(1+t3.^3);y3=3*t3.^2./(1+t3.^3);
subplot(2,2,3);plot(x3,y3);title('叶形线');
y4=0.001:0.001:1;x41=log((1+sqrt(1-y4.^2))./y4)-sqrt(1-y4.^2);
x42=log((1-sqrt(1-y4.^2))./y4)+sqrt(1-y4.^2);subplot(2,2,4);
plot(y4,x41,y4,x42);title('曳物线');
