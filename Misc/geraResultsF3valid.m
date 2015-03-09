function pt = geraResultsF3valid(imvec,N,delta,epsilon,region)



% 
% cenhes = geraRepeatVectorConst('censurehes',imvec,N,delta,epsilon,region);
% fprintf(' Gerou censur HEssian  \n');
% cenhes  = cenhes./max(cenhes);
% save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'-append','cenhes');
% 
% cenpoly = geraRepeatVectorConst('cenpoly',imvec,N,delta,epsilon,region);
% fprintf(' Gerou censure \n');
% cenpoly = cenpoly./max(cenpoly);
% save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'-append','cenpoly');

%kaze = geraRepeatVectorConst('kazeg2',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Kaze \n');

hesvec = geraRepeatVectorConst('hessian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian  \n');
hesvec = hesvec./max(hesvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'hesvec');


lapvec = geraRepeatVectorConst('laplacian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Laplacian  \n');
lapvec = lapvec./max(lapvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'-append','lapvec');




harvec = geraRepeatVectorConst('harris',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris \n');
harvec = harvec./max(harvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'-append','harvec');

surfvec = geraRepeatVectorConst('surf',imvec,N,delta,epsilon,region);
fprintf(' Gerou SURF \n');
surfvec = surfvec./max(surfvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'-append','surfvec');


siftvec = geraRepeatVectorConst('sift',imvec,N,delta,epsilon,region);
fprintf(' Gerou SIFT \n');
siftvec = siftvec./max(siftvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'-append','siftvec');




% 

% 




pt=1;
% 
% surfvec = geraRepeatVectorConst('surf',imvec,N,delta,epsilon,region);
% fprintf(' Gerou SURF \n');



% siftvec = geraRepeatVectorConst('sift',imvec,N,delta,epsilon,region);
% fprintf(' Gerou SIFT \n');


%heslapvec = geraRepeatVectorConst('hessianlap',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Hessian Laplace \n');


%harcolor = geraRepeatVectorConst('harriscolor',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Color \n');
%harcolorb = geraRepeatVectorConst('harriscolorb',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Color Boosted \n');


%harlapvec = geraRepeatVectorConst('harrislap',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Harris Laplace \n');

% 
% 
%  lapvec = lapvec./max(lapvec);
% harvec = harvec./max(harvec);
%  hesvec = hesvec./max(hesvec);
% 
%  siftvec = siftvec./max(siftvec);
%  surfvec= surfvec./max(surfvec);
% kaze = kaze./max(kaze);
%  censure = censure./max(censure);
% 
% 
% 
% save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F3V'),'lapvec','harvec','hesvec','siftvec','surfvec','kaze','censure');
% figure;
% 
% geraPlotF3

end
