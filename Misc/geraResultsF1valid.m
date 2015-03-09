function pt = geraResultsF1valid(imvec,N,delta,epsilon,region)




hesvec = geraRepeatVectorConst('hessian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian  \n');
hesvec = hesvec./max(hesvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'hesvec');


%  cenhes = geraRepeatVectorConst('censurehes',imvec,N,delta,epsilon,region);
%  fprintf(' Gerou censur HEssian  \n');
%  cenhes  = cenhes./max(cenhes);
%  save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'-append','cenhes');

 
 % 
 %cenpoly = geraRepeatVectorConst('cenpoly',imvec,N,delta,epsilon,region);
 %fprintf(' Gerou censure \n');
 %cenpoly = cenpoly./max(cenpoly);
 %save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'-append','cenpoly');

 
 %cenpoly = geraRepeatVectorConst('cenpoly',imvec,N,delta,epsilon,region);
 %fprintf(' Gerou censure \n');
 %cenpoly = cenpoly./max(cenpoly);
 %save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'-append','cenpoly');

%kaze = geraRepeatVectorConst('kazeg2',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Kaze \n');


surfvec = geraRepeatVectorConst('surf',imvec,N,delta,epsilon,region);
fprintf(' Gerou SURF \n');
surfvec = surfvec./max(surfvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'-append','surfvec');



siftvec = geraRepeatVectorConst('sift',imvec,N,delta,epsilon,region);
fprintf(' Gerou SIFT \n');
siftvec = siftvec./max(siftvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'-append','siftvec');



lapvec = geraRepeatVectorConst('laplacian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Laplacian  \n');
lapvec = lapvec./max(lapvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'-append','lapvec');










harvec = geraRepeatVectorConst('harris',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris \n');
harvec = harvec./max(harvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'-append','harvec');


%heslapvec = geraRepeatVectorConst('hessianlap',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Hessian Laplace \n');


%harcolor = geraRepeatVectorConst('harriscolor',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Color \n');
%harcolorb = geraRepeatVectorConst('harriscolorb',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Color Boosted \n');


%harlapvec = geraRepeatVectorConst('harrislap',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Laplace \n');



%harvec = harvec./max(harvec);


%siftvec = siftvec./max(siftvec);
%surfvec= surfvec./max(surfvec);
%kaze = kaze./max(kaze);

pt=1;


%save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F1V'),'lapvec','harvec','hesvec','siftvec','surfvec','kaze','censure','cenhes');
%figure;

%geraPlotF1

end
