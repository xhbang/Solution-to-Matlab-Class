function xdot=eqs3(t,p,flag,lp,lt,gm)
a=[-(lp+lt) gm 0;lt/2 -(gm+lp+lt) 0; lp+lt/2 lp+lt 0];
p=[p(1);p(2);p(3)];
xdot=a*p;
