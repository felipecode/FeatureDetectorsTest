test1 = geraFeatures(rgb2gray(im1),'harris');
test2 = geraFeatures(rgb2gray(im2),'harris');
test3 = geraFeatures(rgb2gray(im3),'harris');
test4 = geraFeatures(rgb2gray(im4),'harris');
test5 = geraFeatures(rgb2gray(im5),'harris');
Vec = [size(test1,1)];
Vec = [Vec, countFeatures(test1,test2,10,size(rgb2gray(im1)))];
Vec = [Vec, countFeatures(test1,test3,10,size(rgb2gray(im1)))];
Vec = [Vec, countFeatures(test1,test4,10,size(rgb2gray(im1)))];
Vec = [Vec, countFeatures(test1,test5,10,size(rgb2gray(im1)))];
save();

