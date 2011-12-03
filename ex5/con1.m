function [c,ceq]=con1(x);
c(1)=x(1)^2*x(2)-675;
c(2)=x(1)^2*x(3)^2/10^7-0.419;
ceq=[];