

barPt=bar(n400d25r10c,'y');

set(gca,'xticklabel', names);
ylim([0 0.35]);
str = sprintf('N = %d r = %d \\delta = %d',N,r,delta);
title(str,'FontSize', 15);
set(gca, 'YGrid','on');
ylabel('T_{r}');
 str2 = sprintf('Results/%d%d%d.png',N,r,delta);
% imshow(barPt);
 imwrite(gca,str2);