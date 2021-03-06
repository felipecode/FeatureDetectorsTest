
% 
%     lapvec(12) = [];
%     heslapvec(12) = []; 
%     harvec(12) = [ ]; 
%     hesvec(12) = []; 
%     harcolor(12) = []; 
%     harcolorb(12) = [];
%     siftvec(12) = [];
%     surfvec(12) = [];
%     harlapvec(12) =[]; 
% 



    %juice = [ 0 50 150 200 250 300 350 500 600 700 800 900 ];
    juice = [ 0 3.25 6.5 9.75 13 16.25 19.5 22.75 26 32.5 39];
    
    x =[0,0.0744830507093807,0.107181869770273,0.141864952010268,0.169025974051439,0.209173065145126,0.229288885984983,0.268474809778051,0.341078178304642,0.494443319377066,0.570179254238941];
    

    figure     
    %pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'y-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
    pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'m-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'r-o',x,siftvec,'m-x',x,surfvec,'r-.*',x,kaze,'g-.*',x,censure,'g-d');
    %set(gca,'XScale','log'); 
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    legend1=legend('Harris','Hessian','Laplacian','HarCol','HarColB','HarLap','HesLap','DoG','FastHes','kaze','censure');
    set(legend1,'FontSize',12,'FontName','Courier 10 Pitch');

    title('Scene 1','FontSize',17,'FontName','Courier 10 Pitch');
    ylabel('T_{r}');
%     xlabel('Turbidity Constant Approximation c_{est} / milliliters of milk');
    %set(gca,'Xlabel','Position',[0 -2.0]);
    ylim([0 max([max(harvec),max(hesvec),max(lapvec),max(harcolor),max(harcolorb),max(harlapvec),max(heslapvec),max(siftvec),max(surfvec)])]);
    xlim([0 max(x)]);
    for i=1:11
        xtl{i} = {juice(i);x(i)};
    end


    my_xticklabels(gca,x,xtl);

