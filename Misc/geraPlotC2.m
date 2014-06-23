



    juice = [ 0 50 150 200 250 300 350 400 700 800 900 ];
    %juice = [ 0 100 200 300 400 500 600 700 800 1000 1200 1400];

    x = [0,0.0773180112038815,0.135475326012320,0.171668636374575,0.196293773651242,0.240633493630426,0.356664146757845,0.469730400390016,0.674511247117746,0.844613940458289,0.933860647147966]; 
    figure     
    
    for i=1:length(x)
    
     x(i) = floor(x(i)*100)/100;
    
    end
    
    %pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'y-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
    pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'m-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
     %set(gca,'XScale','log'); 
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    legend1=legend('Harris','Hessian','Laplacian','HarCol','HarColB','HarLap','HesLap','DoG','FastHes');
    set(legend1,'FontSize',12,'FontName','Courier 10 Pitch');

    title('Scene 2','FontSize',17,'FontName','Courier 10 Pitch');
    ylabel('T_{r}');
    xlabel(' Turbidity Constant Approximation c_{est}/ Grams of Lemon Juice Powder');
    ylim([0 1]);
    xlim([0 0.93]);
    for i=1:11
        xtl{i} = {x(i);juice(i)};
    end


    my_xticklabels(gca,x,xtl);
       
