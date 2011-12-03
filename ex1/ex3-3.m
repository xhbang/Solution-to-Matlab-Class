v=[10^7,10^8];
ezplot('x',v),
hold on;
ezplot('x.^3',v),
hold on;
ezplot('x+x.^3',v);

x=10^7*5;
text(x,x,'\leftarrowx');
text(x,x^3,'\leftarrowx^3');
text(x,x+x^3,'\leftarrowx+x^3');