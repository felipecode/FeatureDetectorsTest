function pt = geraPlot4(imvec)

% Mais e menos para numero de features e accuracy   --- FAST HES,, HAR LAP
% HAR,,,  HESSIAN,, LAPLACIAN
% 

hesvec1 = geraRepeatVector('hessian',imvec,400,5,1);
hesvec2 = geraRepeatVector('hessian',imvec,400,5,4);

harvec1= geraRepeatVector('harris',imvec,400,5,1);
harvec2 = geraRepeatVector('harris',imvec,400,5,4);



lapvec1 = geraRepeatVector('laplacian',imvec,400,5,1);
lapvec2 = geraRepeatVector('laplacian',imvec,400,5,4);


surfvec1 = geraRepeatVector('surf',imvec,400,5,1);
surfvec2 = geraRepeatVector('surf',imvec,400,5,4);


harlapvec1 = geraRepeatVector('harrislap',imvec,400,5,1);
harlapvec2 = geraRepeatVector('harrislap',imvec,400,5,4);




hesvec1 = hesvec1./400;
hesvec2 = hesvec2./400;

harvec1 = harvec1./400;
harvec2 = harvec2./400;

lapvec1 = lapvec1./400;
lapvec2 = lapvec2./400;

surfvec1 = surfvec1./400;
surfvec2 = surfvec2./400;

harlapvec1 = harlapvec1./400;
harlapvec2 = harlapvec2./400;

save('variasemerrorl');
figure
x = [ 100 200 300 400 500 600 700 800 1000 1200 1400];
SDIvec = []; for i=2:12; SDIvec = [ SDIvec ,100 * floor((1- ssim_index(rgb2gray(imvec{1}),rgb2gray(imvec{i})))*10000)/10000]; end
%pt = plot(x,hesvec1,'b-o',x,harcolor1,'g--o',x,hesvec2,'b-s',x,harcolor2,'g--s',x,hesvec3,'b-d',x,harcolor3,'g--d',x,hesvec4,'b-x',x,harcolor4,'g--x');
pt = plot(x,hesvec1,'r-*',x,hesvec2,'r--*', x,harvec1,'b-d',x,harvec2,'b--d',x,lapvec1,'m-o',x,lapvec2,'m--o',x,surfvec1,'c-^',x,surfvec2,'c--^',x,harlapvec1,'k-s',x,harlapvec2,'k--s');
legend1 = legend('Hessian e=1 ','Hessian e=4','Harris e=1 ','Harris e=4','Laplacian e=1 ','Laplacian e=4','FastHes e=1 ','FastHes e=4','HarLap e=1 ','HarLap e=4');
set(legend1,'FontSize',10,'FontName','Courier 10 Pitch');
set(gca, 'XGrid','on');
set(gca, 'YGrid','on');

%set(legend1,'FontSize',17,'FontName','Courier 10 Pitch');
%str = sprintf('High Scattering \\epsilon = 5 \ \delta = 2');
title('Low Scattering','FontSize',15,'FontName','Courier 10 Pitch');
ylabel('T_{r}');
xlabel('Structure Degradation Index','FontSize',14);
ylim([0 1]);
set(gca, 'XTick', x);

set(gca, 'XTickLabel', x);