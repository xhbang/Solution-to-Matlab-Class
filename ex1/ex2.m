%ex2
data=[7.15,8.25,3.20,10.30,6.68,12.03,16.85,17.51,9.30;
    11.10,15.00,6.00,16.25,9.90,18.25,20.80,24.15,15.50;
    568,1205,753,580,395,2104,1538,810,694];
for i=1:9
    profitsingle(i)=data(2,i)-data(1,i);
    profitall(i)=profitsingle(i)*data(3,i);
    incoming(i)=data(2,i)*data(3,i);
end
profitsingle
[minprofit,index1]=min(profitsingle)
[maxprofit,index2]=max(profitsingle)
profitall
profitsum=sum(profitall)
incoming
incomesum=sum(incoming)
[sortincoming,index]=sort(incoming)