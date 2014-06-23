 
degree = 1;
figure;
pt = plot(x2,genPoli(x,harvec,degree),'b-',x2,genPoli(x,hesvec,degree),'r-',x2,genPoli(x,lapvec,degree),'m-',x2,genPoli(x,harcolorb,degree),'g--',x2,genPoli(x,harcolor,degree),'k--');
fprintf('PT 2 \n');
figure;
pt2 = plot(x2,genPoli(x,harlapvec,degree),'k--',x2,genPoli(x,heslapvec,degree),'c--',x2,genPoli(x,siftvec,degree),'m-',x2,genPoli(x,surfvec,degree),'g-');