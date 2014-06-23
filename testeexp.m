x = 0:0.001:1
figure
hold on;
for i=1:10;
    b = 5/10;
    a = -10/2;
    y = b*exp(a*x);
    plot(x,y);
    %legend1 = lengend(int2str(i));
    %set(legend1,'FontSize',12,'FontName','Courier 10 Pitch');

end