function pt = geraResultsC2valid(imvec,N,delta,epsilon,region)



lapvec = geraRepeatVector2('laplacian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Laplacian \n');
heslapvec = geraRepeatVector2('hessianlap',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian Laplace \n');
harvec = geraRepeatVector2('harris',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris \n');
hesvec = geraRepeatVector2('hessian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian  \n');
harcolor = geraRepeatVector2('harriscolor',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris Color \n');
harcolorb = geraRepeatVector2('harriscolorb',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris Color Boosted \n');
siftvec = geraRepeatVector2('sift',imvec,N,delta,epsilon,region);
fprintf(' Gerou SIFT \n');
surfvec = geraRepeatVector2('surf',imvec,N,delta,epsilon,region);
fprintf(' Gerou SURF \n');
harlapvec = geraRepeatVector2('harrislap',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris Laplace \n');




lapvec = lapvec./max(lapvec);
heslapvec = heslapvec./max(heslapvec);
harvec = harvec./max(harvec);
hesvec = hesvec./max(hesvec);
harcolor = harcolor./max(harcolor);
harcolorb = harcolorb./max(harcolorb);
siftvec = siftvec./max(siftvec);
surfvec= surfvec./max(surfvec);
harlapvec = harlapvec./max(harlapvec);



save(strcat(int2str(N),int2str(delta),int2str(epsilon),'C2V'));
figure;




geraPlotC2


