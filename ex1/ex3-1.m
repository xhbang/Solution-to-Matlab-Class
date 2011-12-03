%y=x
subplot(2,2,1);
ezplot('x',[0,2]);
title('y=x');
grid on;

%y=x^3
subplot(2,2,2);
ezplot('x^3',[0,2]);
title('y=x^3');
grid on;

%y=x^6
subplot(2,2,3);
ezplot('x^6',[0,2]);
title('y=x^6');
grid on;

%y=x^30
subplot(2,2,4);
ezplot('x^30',[0,2]);
title('y=x^30');
grid on;