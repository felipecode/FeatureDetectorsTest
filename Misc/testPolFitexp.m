 
x2 = 0:0.001:1;
degree = 1;
figure;

pt = plot(x2,genPoliExp(x,harvec,degree),'b-',x2,genPoliExp(x,hesvec,degree),'r-',x2,genPoliExp(x,lapvec,degree),'m-',x2,genPoliExp(x,harcolor,degree),'k--',x2,genPoliExp(x,harcolorb,degree),'c--');
set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    [a1,b1] =genPoliExp2(x,harvec,degree);
    [a2,b2] =genPoliExp2(x,hesvec,degree);
    [a3,b3] =genPoliExp2(x,lapvec,degree);
    [a4,b4] =genPoliExp2(x,harcolor,degree);
    [a5,b5] =genPoliExp2(x,harcolorb,degree);
    legend1=legend(sprintf('Harris A =%.2f B=%.2f',a1,b1) ,sprintf('Hessian A =%.2f B=%.2f',a2,b2),sprintf('Laplacian A =%.2f B=%.2f',a3,b3),sprintf('HarCol A =%.2f B=%.2f',a4,b4),sprintf('HarColB A =%.2f B=%.2f',a5,b5));
    set(legend1,'FontSize',13,'FontName','Courier 10 Pitch');

    title('Exponential Regression - Single Scale','FontSize',16,'FontName','Courier 10 Pitch');

    xlabel('c_{est}');

fprintf('PT 2 \n');
figure;

pt2 = plot(x2,genPoliExp(x,harlapvec,degree),'b--',x2,genPoliExp(x,heslapvec,degree),'r--',x2,genPoliExp(x,siftvec,degree),'m-',x2,genPoliExp(x,surfvec,degree),'g-');
set(gca, 'XGrid','on');
    set(gca, 'YGrid','on');
    
    [a1,b1] =genPoliExp2(x,harlapvec,degree);
    [a2,b2] =genPoliExp2(x,heslapvec,degree);
    [a3,b3] =genPoliExp2(x,siftvec,degree);
    [a4,b4] =genPoliExp2(x,surfvec,degree);
    
    legend1=legend(sprintf('HarLap A =%.2f B=%.2f',a1,b1) ,sprintf('HesLap A =%.2f B=%.2f',a2,b2),sprintf('DoG A =%.2f B=%.2f',a3,b3),sprintf('FastHes A =%.2f B=%.2f',a4,b4));
    set(legend1,'FontSize',13,'FontName','Courier 10 Pitch');

    title('Exponential Regression - Multiple Scale','FontSize',16,'FontName','Courier 10 Pitch');

    xlabel('c_{est}');