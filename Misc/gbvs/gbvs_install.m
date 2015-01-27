
pathroot = pwd;
save -mat Misc/gbvs/util/mypath.mat pathroot
addpath(genpath( pathroot ), '-begin');
%savepath