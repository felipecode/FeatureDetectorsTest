

   lapvec(9) = [];
   lapvec(3) = [];
   heslapvec(9) = []; 
   heslapvec(3) = [];    
   harvec(9) = [ ]; 
   harvec(3) = [ ];
   hesvec(9) = []; 
   hesvec(3) = [];
   harcolor(9) = []; 
   harcolor(3) = [];
   harcolorb(9) = [];
   harcolorb(3) = [];
   siftvec(9) = [];
   siftvec(3) = [];
   surfvec(9) = [];
   surfvec(3) = [];
   harlapvec(9) =[]; 
   harlapvec(3) =[];


    juice = [ 0 50 150 200 250 300 350 500 600 700 800 900 ];
    %juice = [ 0 100 200 300 400 500 600 700 800 1000 1200 1400];
    x=[0,0.0881762688826763,0.157128651234724,0.195879269367194,0.226664275935152,0.285968663290022,0.380641554672667,0.391663549442682,0.527628032927246,0.773809951263790,0.977224192697317,1.11945905152919];
    
    figure     
    %pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'y-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
    pt = plot(x,harvec,'b-d',x,hesvec,'r-*',x,lapvec,'m-o',x,harcolor,'g-s',x,harcolorb,'g-.x',x,harlapvec,'k-s',x,heslapvec,'c-o',x,siftvec,'m-x',x,surfvec,'c-.*');
     %set(gca,'XScale','log'); 
    set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    legend1=legend('Harris','Hessian','Laplacian','HarCol','HarColB','HarLap','HesLap','DoG','FastHes');
    set(legend1,'FontSize',12,'FontName','Courier 10 Pitch');

    title('High Scattering - Scene 2','FontSize',17,'FontName','Courier 10 Pitch');
    ylabel('T_{r}');
    xlabel(' Turbidity Constant Approximation/ Grams of Lemon Juice Powder');
    ylim([0 1]);

    for i=1:12
        xtl{i} = {x(i);juice(i)};
    end


    my_xticklabels(gca,x,xtl);
       
