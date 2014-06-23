function pt = geraResultsC1(imvec,N,delta,epsilon)



lapvec = geraRepeatVector('laplacian',imvec,N,delta,epsilon);
fprintf(' Gerou Laplacian \n');
heslapvec = geraRepeatVector('hessianlap',imvec,N,delta,epsilon);
fprintf(' Gerou Hessian Laplace \n');
harvec = geraRepeatVector('harris',imvec,N,delta,epsilon);
fprintf(' Gerou Harris \n');
hesvec = geraRepeatVector('hessian',imvec,N,delta,epsilon);
fprintf(' Gerou Hessian  \n');
harcolor = geraRepeatVector('harriscolor',imvec,N,delta,epsilon);
fprintf(' Gerou Harris Color \n');
harcolorb = geraRepeatVector('harriscolorb',imvec,N,delta,epsilon);
fprintf(' Gerou Harris Color Boosted \n');
siftvec = geraRepeatVector('sift',imvec,N,delta,epsilon);
fprintf(' Gerou SIFT \n');
surfvec = geraRepeatVector('surf',imvec,N,delta,epsilon);
fprintf(' Gerou SURF \n');
harlapvec = geraRepeatVector('harrislap',imvec,N,delta,epsilon);
fprintf(' Gerou Harris Laplace \n');


lapvec = lapvec./N;
heslapvec = heslapvec./N;
harvec = harvec./N;
hesvec = hesvec./N;
harcolor = harcolor./N;
harcolorb = harcolorb./N;
siftvec = siftvec./N;
surfvec= surfvec./N;
harlapvec = harlapvec./N;


save(strcat(int2str(N),int2str(delta),int2str(epsilon),'C1'));
figure;

geraPlotC1

end
