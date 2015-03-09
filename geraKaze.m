
function pt = geraKaze(imvec,N,delta,epsilon,region,type)

kazeg2 = geraRepeatVectorConst('kazeg2',imvec,N,delta,epsilon,region);
fprintf(' Gerou Kaze \n');

kazeg1 = geraRepeatVectorConst('kazeg1',imvec,N,delta,epsilon,region);
fprintf(' Gerou Kaze \n');

kazeg3 = geraRepeatVectorConst('kazeg3',imvec,N,delta,epsilon,region);
fprintf(' Gerou Kaze \n');

kazeg1 = kazeg1./max(kazeg1);

kazeg2 = kazeg2./max(kazeg2);

kazeg3 = kazeg3./max(kazeg3);

save(strcat(int2str(N),int2str(delta),int2str(epsilon),type,'Vkazes'),'kazeg1','kazeg2','kazeg3');
pt=1;