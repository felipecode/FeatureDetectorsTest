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
    
    load('IDTValuesF1');
    x = x./max(x);
    x= round(x.*100)/100;
    
    figure;     
    %pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'y-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
    pt = plot(x,harvec,'b-d',x,hesvec,'b-*',x,lapvec,'b-o',x,siftvec,'m--x',x,surfvec,'m--*',x,cenpoly,'g-d',x,censtar,'g-s',x,kazeg1,'r-.d',x,kazeg2,'r-.o',x,kazeg3,'r-.*');
    %set(gca,'XScale','log'); 
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    legend1=legend('Harris','Hessian','Laplacian','DoG','FastHes','CenSurPoly','CenSurStar','Kaze G1','Kaze G2','Kaze G3');
    set(legend1,'FontSize',40,'FontName','Courier 10 Pitch');

    title('Photo 1','FontSize',50,'FontName','Courier 10 Pitch');
    ylabel('R');
    xlabel('NSDI / milliliters of milk');
    
    ylim([0 max([max(harvec),max(hesvec),max(lapvec),max(siftvec),max(surfvec),max(cenpoly),max(kazeg1)])]);
    xlim([0 max(x)]);
    for i=1:20
        xtl{i} = {x(i);milk(i)};
    end

    my_xticklabels(gca,x,xtl);
    %set(gca,'FontSize',14)
%     
     %xlhand = get(gca,'xlabel');
    % set(xlhand,'string','X','fontsize',20)
    %set(gca,'Xlabel','Position',[0 -2.0],'FontSize',12);
    %set(gca,'FontSize',35,'FontName','Courier 10 Pitch');

