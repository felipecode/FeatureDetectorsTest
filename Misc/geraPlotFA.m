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
    
    load('IDTValuesFA');
    x = x./max(x);
  
    
    figure;     
    %pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'y-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
    h = errorbar(x,harvecA,harvecE','b-d');
    hold on;
    
   % set(h, 'MarkerSize', 10, 'MarkerFaceColor', [.3 1 .3],'MarkerEdgeColor', [0 .5 0]);

    h= errorbar(x,hesvecA,hesvecE','b-*')

    errorbar(x,lapvecA,lapvecE','b-o','MarkerSize',2);
    errorbar(x,siftvecA,siftvecE','r--x','MarkerSize',2);
    errorbar(x,surfvecA,surfvecE','r--*','MarkerSize',2);
    errorbar(x,cenpolyA,cenpolyE','g-d','MarkerSize',2);
    errorbar(x,censtarA,censtarE','g-s','MarkerSize',2);
    errorbar(x,kazeg1A,kazeg1E','m-.d','MarkerSize',2);
    errorbar(x,kazeg2A,kazeg1E','m-.o','MarkerSize',2);
    errorbar(x,kazeg3A,kazeg3E','m-.*','MarkerSize',1,'LineWidth',0.1);
    hold off
    %set(gca,'XScale','log'); 
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    legend1=legend('Harris','Hessian','Laplacian','DoG','FastHes','CenSurPoly','CenSurStar','Kaze G1','Kaze G2','Kaze G3');
    set(legend1,'FontSize',12,'FontName','Courier 10 Pitch');

    title('Photo 1','FontSize',17,'FontName','Courier 10 Pitch');
    ylabel('T_{r}');
    xlabel('SDI / milliliters of milk');
    %set(gca,'Xlabel','Position',[0 -2.0]);
    ylim([0 max([max(harvec),max(hesvec),max(lapvec),max(siftvec),max(surfvec),max(cenpoly),max(kazeg1)])]);
    xlim([0 max(x)]);
    for i=1:20
        xtl{i} = {milk(i);x(i)};
    end


    my_xticklabels(gca,x,xtl);

