r=rand(10); 
y=[];
for i=1:10
  if 0<r(i)&r(i)<0.3
     y(i)=3.5;
  elseif 0.3<=r(i)&r(i)<0.8
     y(i)=5.5;
  else 
     y(i)=8;
  end
end
y    % 产生随机变量数组。