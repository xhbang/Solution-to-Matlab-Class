x1=input('x1');
x2=input('x2');
while fangcheng(x1)*fangcheng(x2)>0
    x1=input('reinput');
    x2=input('reinput');
end
while abs(x1-x2)>0.01
    x3=(x1+x2)/2;
    if fangcheng(x1)*fangcheng(x3)<0
        x2=x3;
    else
        x1=x3;
    end
end
x1