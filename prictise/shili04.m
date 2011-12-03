%实例4：双y轴图形的绘制

function shili04
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','实例04');
x=0:900;a=1000;b=0.005;
y1=2*x;
y2=cos(b*x);
[haxes,hline1,hline2]=plotyy(x,y1,x,y2,'semilogy','plot');
axes(haxes(1))
ylabel('semilog plot');
axes(haxes(2))
ylabel('linear plot');