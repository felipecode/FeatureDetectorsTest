%  
% sifttest1 = geraFeatures(rgb2gray(im1),'sift');
% sifttest2 = geraFeatures(rgb2gray(im2),'sift');
% sifttest3 = geraFeatures(rgb2gray(im3),'sift');
% sifttest4 = geraFeatures(rgb2gray(im4),'sift');
% sifttest5 = geraFeatures(rgb2gray(im5),'sift');
% siftVec = [size(sifttest1,1)];
% siftVec = [siftVec, countFeatures(sifttest1,sifttest2,10,size(rgb2gray(im1)))];
% siftVec = [siftVec, countFeatures(sifttest1,sifttest3,10,size(rgb2gray(im1)))];
% siftVec = [siftVec, countFeatures(sifttest1,sifttest4,10,size(rgb2gray(im1)))];
% siftVec = [siftVec, countFeatures(sifttest1,sifttest5,10,size(rgb2gray(im1)))];
% save();

 sifttest1L = geraFeatures(rgb2gray(im1l),'sift');
 sifttest2L = geraFeatures(rgb2gray(im2l),'sift');
 sifttest3L = geraFeatures(rgb2gray(im3l),'sift');
 sifttest4L = geraFeatures(rgb2gray(im4l),'sift');
 sifttest5L = geraFeatures(rgb2gray(im5l),'sift');
siftVecL = [size(sifttest1L,1)];
siftVecL = [siftVecL, countFeatures(sifttest1L,sifttest2L,10,size(rgb2gray(im1l)))];
siftVecL = [siftVecL, countFeatures(sifttest1L,sifttest3L,10,size(rgb2gray(im1l)))];
siftVecL = [siftVecL, countFeatures(sifttest1L,sifttest4L,10,size(rgb2gray(im1l)))];
siftVecL = [siftVecL, countFeatures(sifttest1L,sifttest5L,10,size(rgb2gray(im1l)))];

save();











