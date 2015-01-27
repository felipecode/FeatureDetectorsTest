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
    milk = [ 0 5 10 15 20 25 30 36 42 50 58 66 74 82 90 100 110 120 130 190];
    
    load('IDTValuesF3');
    
    figure     
    %pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'y-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
    pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'m-o',x,siftvec,'m-x',x,surfvec,'r-.*',x,kaze,'g-.*',x,censure,'g-d');
    %set(gca,'XScale','log'); 
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    legend1=legend('Harris','Hessian','Laplacian','DoG','FastHes','Kaze','CenSurE');
    set(legend1,'FontSize',12,'FontName','Courier 10 Pitch');

    title('Photo 3','FontSize',17,'FontName','Courier 10 Pitch');
    ylabel('T_{r}');
%     xlabel('Turbidity Constant Approximation c_{est} / milliliters of milk');
    %set(gca,'Xlabel','Position',[0 -2.0]);
    ylim([0 max([max(harvec),max(hesvec),max(lapvec),max(siftvec),max(surfvec),max(censure),max(kaze)])]);
    xlim([0 max(x)]);
    for i=1:20
        xtl{i} = {milk(i);x(i)};
    end


    my_xticklabels(gca,x,xtl);

