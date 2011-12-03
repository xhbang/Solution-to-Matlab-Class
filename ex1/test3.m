syms x;
n=input('n?')
f=x^2/(1-x^2);
f2=diff(f,x,n)
x=0;
eval(f2)
