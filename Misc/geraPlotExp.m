



hold on
load('15071C1V.mat');
 x =[0,0.0744830507093807,0.107181869770273,0.141864952010268,0.169025974051439,0.209173065145126,0.229288885984983,0.268474809778051,0.341078178304642,0.494443319377066,0.570179254238941];
 
for i=1:length(x)
    
    x(i) = floor(x(i)*100)/100;
    
end

pt = plot(x,harcolor,'g-d',x,lapvec,'m-d','lineWidth',1);
load('50071C1V.mat');
pt = plot(x,harcolor,'g-x',x,lapvec,'m-x','lineWidth',2);
load('70071C1V.mat');
pt = plot(x,harcolor,'g-s',x,lapvec,'m-s','lineWidth',3);

legend1=legend('N=150','N=500','N=700');
set(legend1,'FontSize',13,'FontName','Courier 10 Pitch');

title('Exponential Regression - HarCol(Green) and Laplacian(Magenta) - Scene 1','FontSize',15,'FontName','Courier 10 Pitch');
ylabel('T_{r}','FontSize',17);
xlim([0 0.57]);

    for i=1:11
        xtl{i} = {x(i);juice(i)};
    end


    my_xticklabels(gca,x,xtl);
       
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');



xlabel('c_{est}');
