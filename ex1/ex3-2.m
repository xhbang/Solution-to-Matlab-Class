ezplot('x',[-0.5,0.5]),
hold on;
ezplot('x.^3',[-0.5,0.5]),
hold on;
ezplot('x+x.^3',[-0.5,0.5]);
title('compare');

text(0.3,0.3,'\leftarrowx');
text(0.3,0.3^3,'\leftarrowx^3');
text(0.3,0.3+0.3^3,'\leftarrowx+x^3');