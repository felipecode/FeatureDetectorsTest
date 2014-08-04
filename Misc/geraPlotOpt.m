function pt = geraPlotOpt(imvec)



x = [ 0 100 200 300 400 500 600 700 800 1000 1200 1400];

x = x./1400;




anglesvec = [];
axis = 10:10:350;


for i=10:10:350
    hesvec = geraRepeatVector('harriscolor',imvec,i,10,1);
    hesvec = hesvec./i;
    b=polyfit(x',hesvec,1);
    anglesvec = [anglesvec, atan(b(1))];
    save('harriscolor');
    
end
save('harriscolor');
plot(axis,anglesvec,'o');


save('harriscolor');
%figure
%x = [ 100 200 300 400 500 600 700 800 1000 1200 1400];
%SDIvec = []; for i=2:12; SDIvec = [ SDIvec ,100 * floor((1- ssim_index(rgb2gray(imvec{1}),rgb2gray(imvec{i})))*10000)/10000]; end
%pt = plot(x,hesvec1,'b-o',x,hesvec2,'b-s',x,hesvec3,'b-d',x,hesvec4,'b-x');
%set(gca, 'XGrid','on');
%set(gca, 'YGrid','on');
%legend1 = legend('hes1 hes2 hes3 hes4');
%set(legend1,'Location','NorthEastOutside');
%str = sprintf('High Scattering \\epsilon = 5 \\delta = 2');
%title('High Scattering','FontSize',15,'FontName','Courier 10 Pitch');
%ylabel('T_{r}');
%xlabel('Structure Degradation Index');
%ylim([0 1]);
%set(gca, 'XTick', x);



