function pt = geraResultsC1valid(imvec,N,delta,epsilon,region)



lapvec = geraRepeatVectorConst('laplacian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Laplacian \n');
heslapvec = geraRepeatVectorConst('hessianlap',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian Laplace \n');
harvec = geraRepeatVectorConst('harris',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris \n');
hesvec = geraRepeatVectorConst('hessian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian  \n');
harcolor = geraRepeatVectorConst('harriscolor',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris Color \n');
harcolorb = geraRepeatVectorConst('harriscolorb',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris Color Boosted \n');
siftvec = geraRepeatVectorConst('sift',imvec,N,delta,epsilon,region);
fprintf(' Gerou SIFT \n');
surfvec = geraRepeatVectorConst('surf',imvec,N,delta,epsilon,region);
fprintf(' Gerou SURF \n');
harlapvec = geraRepeatVectorConst('harrislap',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris Laplace \n');
kaze = geraRepeatVectorConst('kaze',imvec,N,delta,epsilon,region);
fprintf(' Gerou Kaze \n');

kaze = kaze./max(kaze);
lapvec = lapvec./max(lapvec);
heslapvec = heslapvec./max(heslapvec);
harvec = harvec./max(harvec);
hesvec = hesvec./max(hesvec);
harcolor = harcolor./max(harcolor);
harcolorb = harcolorb./max(harcolorb);
siftvec = siftvec./max(siftvec);
surfvec= surfvec./max(surfvec);
harlapvec = harlapvec./max(harlapvec);


save(strcat(int2str(N),int2str(delta),int2str(epsilon),'C1V'));
figure;

geraPlotC1

end
