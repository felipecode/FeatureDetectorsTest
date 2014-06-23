% First we load the files needed to make th test
load_files_of_toolbox
% then we load the images that are going to be tested

imvec =loadImages('Images/ExpCaixa/Uni')

N=400;
delta = 7;
epsilon = 5;

[r c]=generateValid(imvec);
region = [r;c]';
pt = geraResultsC1valid(imvec,N,delta,epsilon,region);
