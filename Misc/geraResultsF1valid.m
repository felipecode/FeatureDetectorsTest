function pt = geraResultsF1valid(imvec,N,delta,epsilon,region)



censure = geraRepeatVectorConst('censure',imvec,N,delta,epsilon,region);
fprintf(' Gerou censure \n');


kaze = geraRepeatVectorConst('kaze',imvec,N,delta,epsilon,region);
fprintf(' Gerou Kaze \n');

hesvec = geraRepeatVectorConst('hessian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian  \n');

lapvec = geraRepeatVectorConst('laplacian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Laplacian \n');




harvec = geraRepeatVectorConst('harris',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris \n');


surfvec = geraRepeatVectorConst('surf',imvec,N,delta,epsilon,region);
fprintf(' Gerou SURF \n');



siftvec = geraRepeatVectorConst('sift',imvec,N,delta,epsilon,region);
fprintf(' Gerou SIFT \n');


%heslapvec = geraRepeatVectorConst('hessianlap',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Hessian Laplace \n');


%harcolor = geraRepeatVectorConst('harriscolor',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Color \n');
%harcolorb = geraRepeatVectorConst('harriscolorb',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Color Boosted \n');


%harlapvec = geraRepeatVectorConst('harrislap',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Laplace \n');



lapvec = lapvec./max(lapvec);
harvec = harvec./max(harvec);
hesvec = hesvec./max(hesvec);

siftvec = siftvec./max(siftvec);
surfvec= surfvec./max(surfvec);
kaze = kaze./max(kaze);
censure = censure./max(censure);



save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'));
figure;

geraPlotF1

end
