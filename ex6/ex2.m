x = [1 2 5 7 9 3; 7 6 8 7 5 7];
% Find the best geometric fit
[z, r] = fitcircle(x);
% And plot the results
t = linspace(0, 2*pi, 100);
plot(x(1,:), x(2,:), 'ro', ...
    z(1)  + r  * cos(t), z(2)  + r * sin(t), 'k')
axis equal  
axis([-2 20 -2 14])
title('拟合结果');
legend('数据点','圆');