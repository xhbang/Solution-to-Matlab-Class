options=optimset('display','iter','tolfun',1e-10);
[x,fval]=fminunc('fun1',[0,0],options);