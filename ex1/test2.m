%在MATLAB计算生成的图形上标出图名和最大值点坐标
plot(t,zeros(size(t)),'k'),    hold on
a=2; w=3; t=0:0.01:10;  y=exp(-a*t).*sin(w*t);  plot(t,y,'b'), 	
[y_max,i_max]=max(y); plot(t(i_max),y_max,'r.','MarkerSize',20)
t_text=['t=',num2str(t(i_max))];
y_text=['y=',num2str(y_max)];		
max_text=char('maximum',t_text,y_text);
text(t(i_max)+0.3,y_max+0.05,max_text)	
tit=['y=exp(-',num2str(a),'t)*sin(',num2str(w),'t)'];		
title(tit),xlabel('t'),ylabel('y'), hold off 