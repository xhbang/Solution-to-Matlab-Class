dt=0.1;
n=60/dt;
t=[0];
x=[3];
for i=1:n
    t(i+1)=t(i)+dt;
    x(i+1)=x(i)+5*dt-x(i)*7*dt/(3000+3*t(i));
end

plot(t,x);
grid on;