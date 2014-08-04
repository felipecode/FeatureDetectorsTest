function pt = geraPlot3(imvec)

% Mais e menos para numero de features e accuracy   --- FAST HES,, HAR LAP
% HAR,,,  HESSIAN,, LAPLACIAN
% 

hesvec1 = geraRepeatVector('hessian',imvec,50,5,2);
hesvec2 = geraRepeatVector('hessian',imvec,500,5,2);

harvec1= geraRepeatVector('harris',imvec,50,5,2);
harvec2 = geraRepeatVector('harris',imvec,500,5,2);



lapvec1 = geraRepeatVector('laplacian',imvec,50,5,2);
lapvec2 = geraRepeatVector('laplacian',imvec,500,5,2);


surfvec1 = geraRepeatVector('surf',imvec,50,5,2);
surfvec2 = geraRepeatVector('surf',imvec,500,5,2);


harlapvec1 = geraRepeatVector('harrislap',imvec,50,5,2);
harlapvec2 = geraRepeatVector('harrislap',imvec,500,5,2);




hesvec1 = hesvec1./50;
hesvec2 = hesvec2./500;

harvec1 = harvec1./50;
harvec2 = harvec2./500;

lapvec1 = lapvec1./50;
lapvec2 = lapvec2./500;

surfvec1 = surfvec1./50;
surfvec2 = surfvec2./500;

harlapvec1 = harlapvec1./50;
harlapvec2 = harlapvec2./500;

save('variasemescalal');
figure
x = [ 100 200 300 400 500 600 700 800 1000 1200 1400];
SDIvec = []; for i=2:12; SDIvec = [ SDIvec ,100 * floor((1- ssim_index(rgb2gray(imvec{1}),rgb2gray(imvec{i})))*10000)/10000]; end
%pt = plot(x,hesvec1,'b-o',x,harcolor1,'g--o',x,hesvec2,'b-s',x,harcolor2,'g--s',x,hesvec3,'b-d',x,harcolor3,'g--d',x,hesvec4,'b-x',x,harcolor4,'g--x');
pt = plot(x,hesvec1,'r-*',x,hesvec2,'r--*', x,harvec1,'b-d',x,harvec2,'b--d',x,lapvec1,'m-o',x,lapvec2,'m--o',x,surfvec1,'c-^',x,surfvec2,'c--^',x,harlapvec1,'k-s',x,harlapvec2,'k--s');
legend1 = legend('Hessian N=50 ','Hessian N=500','Harris N=50 ','Harris N=500','Laplacian N=50 ','Laplacian N=500','FastHes N=50 ','FastHes N=500','HarLap N=50 ','HarLap N=500');
set(legend1,'FontSize',10,'FontName','Courier 10 Pitch');


set(gca, 'XGrid','on');
set(gca, 'YGrid','on');
%legend1 = legend('Hessian N=50','HarCol N=50','Hessian N=200', 'HarCol N=200','Hessian N=350','HarCol N=350','Hessian N=500','HarCol N=500');
%set(legend1,'Location','NorthEastOutside');
%str = sprintf('High Scattering \\epsilon = 5 \ \delta = 2');
title('Low Scattering','FontSize',15,'FontName','Courier 10 Pitch');
ylabel('T_{r}');
xlabel('Structure Degradation Index');
ylim([0 1]);
set(gca, 'XTick', x);

set(gca, 'XTickLabel', x);


