
function pt = geraCenSur(imvec,N,delta,epsilon,region,type)


censtar = geraRepeatVectorConst('censtar',imvec,N,delta,epsilon,region);
fprintf(' Gerou censtar \n');

censtar = censtar./max(censtar);

save(strcat(int2str(N),int2str(delta),int2str(epsilon),type,'centers'),'censtar');

cenpoly = geraRepeatVectorConst('cenpoly',imvec,N,delta,epsilon,region);
fprintf(' Gerou CenPoly \n');

cenpoly = cenpoly./max(cenpoly);
save(strcat(int2str(N),int2str(delta),int2str(epsilon),type,'centers'),'-append','cenpoly');



cenhes = geraRepeatVectorConst('cenhes',imvec,N,delta,epsilon,region);
fprintf(' Gerou cenhes \n');

cenhes = cenhes./max(cenhes);


save(strcat(int2str(N),int2str(delta),int2str(epsilon),type,'centers'),'-append','cenhes');

pt=1;



%save(strcat(int2str(N),int2str(delta),int2str(epsilon),type,'Vcenters'),'cenpoly','censtar','cenhes');