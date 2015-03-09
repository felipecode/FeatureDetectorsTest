
imvec = loadImages('Images/Photo1/Cortadas');

load('validPosF1.mat');

type = 'F1';
pt4 = geraCenSur(imvec,1000,25,8,validPos,type);


pt4 = geraCenSur(imvec,100,25,8,validPos,type);

pt4 = geraCenSur(imvec,200,25,8,validPos,type);


% pt4 = geraKaze(imvec,300,25,8,validPos);
% 
% 
% pt4 = geraKaze(imvec,400,25,8,validPos);
% 
% 
% pt4 = geraKaze(imvec,500,25,8,validPos);
% 
% 
% pt4 = geraKaze(imvec,600,25,8,validPos);
% 
% 
% pt4 = geraKaze(imvec,700,25,8,validPos);


imvec = loadImages('Images/Photo2/Cortadas');

type = 'F2';

pt4 = geraCenSur(imvec,1000,25,8,validPos,type);


pt4 = geraCenSur(imvec,100,25,8,validPos,type);

pt4 = geraCenSur(imvec,200,25,8,validPos,type);

imvec = loadImages('Images/Photo3/Cortadas');

type = 'F3';

pt4 = geraCenSur(imvec,1000,25,8,validPos,type);


pt4 = geraCenSur(imvec,100,25,8,validPos,type);

pt4 = geraCenSur(imvec,200,25,8,validPos,type);