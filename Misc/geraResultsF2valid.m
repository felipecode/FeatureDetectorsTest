function pt = geraResultsF2valid(imvec,N,delta,epsilon,region)




%cenhes = geraRepeatVectorConst('censurehes',imvec,N,delta,epsilon,region);
%fprintf(' Gerou censur HEssian  \n');
%cenhes  = cenhes./max(cenhes);
%save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F2V'),'-append','cenhes');

%cenpoly = geraRepeatVectorConst('cenpoly',imvec,N,delta,epsilon,region);
%fprintf(' Gerou censure \n');
%cenpoly = cenpoly./max(cenpoly);
%save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F2V'),'-append','cenpoly');

%kaze = geraRepeatVectorConst('kazeg2',imvec,N,delta,epsilon,region);
%fprintf(' Gerou Kaze \n');

hesvec = geraRepeatVectorConst('hessian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Hessian  \n');
hesvec = hesvec./max(hesvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F2V'),'hesvec');


lapvec = geraRepeatVectorConst('laplacian',imvec,N,delta,epsilon,region);
fprintf(' Gerou Laplacian  \n');
lapvec = lapvec./max(lapvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F2V'),'-append','lapvec');




harvec = geraRepeatVectorConst('harris',imvec,N,delta,epsilon,region);
fprintf(' Gerou Harris \n');
harvec = harvec./max(harvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F2V'),'-append','harvec');

surfvec = geraRepeatVectorConst('surf',imvec,N,delta,epsilon,region);
fprintf(' Gerou SURF \n');
surfvec = surfvec./max(surfvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F2V'),'-append','surfvec');


siftvec = geraRepeatVectorConst('sift',imvec,N,delta,epsilon,region);
fprintf(' Gerou SIFT \n');
siftvec = siftvec./max(siftvec);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),'F2V'),'-append','siftvec');
%figure;
pt=1;
%geraPlotF2

end
