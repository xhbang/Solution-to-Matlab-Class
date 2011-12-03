[x,y]=ode23('weif',[0,1],1);
plot(x,y,'r');
hold on;
ezplot('x+exp(-x)',[0,1]);