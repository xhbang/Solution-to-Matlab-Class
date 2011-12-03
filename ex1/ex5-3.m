clear;
subplot(2,1,1);
ezmesh('cos(u)*sin(v)','sin(u)*sin(v)','cos(v)',[0,1.6*pi,0,pi]);
title('a');
subplot(2,1,2);
ezmesh('cos(u)*sin(v)','sin(u)*sin(v)','cos(v)',[0,2*pi,0.5*pi,pi]);
title('b');
rotate3d;