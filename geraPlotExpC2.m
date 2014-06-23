



hold on
  x = [0,0.0773180112038815,0.135475326012320,0.171668636374575,0.196293773651242,0.240633493630426,0.356664146757845,0.469730400390016,0.674511247117746,0.844613940458289,0.933860647147966]; 
  
load('5071C2V.mat');

for i=1:length(x)
    
    x(i) = floor(x(i)*100)/100;
    
end

pt = plot(x,harcolor,'g-d',x,lapvec,'m-d','lineWidth',1);
load('15071C2V.mat');
pt = plot(x,harcolor,'g-x',x,lapvec,'m-x','lineWidth',2);
load('40071C2V.mat');
pt = plot(x,harcolor,'g-s',x,lapvec,'m-s','lineWidth',3);

legend1=legend('N=50','N=150','N=400');
set(legend1,'FontSize',13,'FontName','Courier 10 Pitch');

title('Exponential Regression - HarCol and Laplacian - Scene 2','FontSize',15,'FontName','Courier 10 Pitch');
ylabel('T_{r}','FontSize',17);
xlim([0 0.93]);

    for i=1:11
        xtl{i} = {x(i);juice(i)};
    end


    my_xticklabels(gca,x,xtl);
       
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');



xlabel('c_{est}');

