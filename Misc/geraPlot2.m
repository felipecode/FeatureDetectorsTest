function pt = geraPlot2(imvec)



hesvec1 = geraRepeatVector('hessian',imvec,50,5,2);
hesvec2 = geraRepeatVector('hessian',imvec,200,5,2);
hesvec3 = geraRepeatVector('hessian',imvec,350,5,2);
hesvec4 = geraRepeatVector('hessian',imvec,500,5,2);



harcolor1 = geraRepeatVector('harriscolor',imvec,50,5,2);
harcolor2 = geraRepeatVector('harriscolor',imvec,200,5,2);
harcolor3 = geraRepeatVector('harriscolor',imvec,350,5,2);
harcolor4 = geraRepeatVector('harriscolor',imvec,500,5,2);



hesvec1 = hesvec1./50;
hesvec2 = hesvec2./200;
hesvec3 = hesvec3./350;
hesvec4 = hesvec4./500;

harcolor1 = harcolor1./50;
harcolor2 = harcolor2./200;
harcolor3 = harcolor3./350;
harcolor4 = harcolor4./500;


save('harriscolor');
figure
x = [ 100 200 300 400 500 600 700 800 1000 1200 1400];
SDIvec = []; for i=2:12; SDIvec = [ SDIvec ,100 * floor((1- ssim_index(rgb2gray(imvec{1}),rgb2gray(imvec{i})))*10000)/10000]; end
pt = plot(x,hesvec1,'b-o',x,harcolor1,'g--o',x,hesvec2,'b-s',x,harcolor2,'g--s',x,hesvec3,'b-d',x,harcolor3,'g--d',x,hesvec4,'b-x',x,harcolor4,'g--x');
set(gca, 'XGrid','on');
set(gca, 'YGrid','on');
legend1 = legend('Hessian N=50','HarCol N=50','Hessian N=200', 'HarCol N=200','Hessian N=350','HarCol N=350','Hessian N=500','HarCol N=500');
%set(legend1,'Location','NorthEastOutside');
%str = sprintf('High Scattering \\epsilon = 5 \\delta = 2');
title('High Scattering','FontSize',15,'FontName','Courier 10 Pitch');
ylabel('T_{r}');
xlabel('Structure Degradation Index');
ylim([0 1]);
set(gca, 'XTick', x);

set(gca, 'XTickLabel', x);


