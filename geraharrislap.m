harrislaptest1 = geraFeatures(rgb2gray(im1),'harrislap');
harrislaptest2 = geraFeatures(rgb2gray(im2),'harrislap');
harrislaptest3 = geraFeatures(rgb2gray(im3),'harrislap');
harrislaptest4 = geraFeatures(rgb2gray(im4),'harrislap');
harrislaptest5 = geraFeatures(rgb2gray(im5),'harrislap');
harrislapVec = [size(harrislaptest1,1)];
harrislapVec = [harrislapVec, countFeatures(harrislaptest1,harrislaptest2,10,size(rgb2gray(im1)))];
harrislapVec = [harrislapVec, countFeatures(harrislaptest1,harrislaptest3,10,size(rgb2gray(im1)))];
harrislapVec = [harrislapVec, countFeatures(harrislaptest1,harrislaptest4,10,size(rgb2gray(im1)))];
harrislapVec = [harrislapVec, countFeatures(harrislaptest1,harrislaptest5,10,size(rgb2gray(im1)))];
save();

 harrislaptest1L = geraFeatures(rgb2gray(im1l),'harrislap');
 harrislaptest2L = geraFeatures(rgb2gray(im2l),'harrislap');
 harrislaptest3L = geraFeatures(rgb2gray(im3l),'harrislap');
 harrislaptest4L = geraFeatures(rgb2gray(im4l),'harrislap');
 harrislaptest5L = geraFeatures(rgb2gray(im5l),'harrislap');
 
harrislapVecL = [size(harrislaptest1L,1)];
harrislapVecL = [harrislapVecL, countFeatures(harrislaptest1L,harrislaptest2L,10,size(rgb2gray(im1l)))];
harrislapVecL = [harrislapVecL, countFeatures(harrislaptest1L,harrislaptest3L,10,size(rgb2gray(im1l)))];
harrislapVecL = [harrislapVecL, countFeatures(harrislaptest1L,harrislaptest4L,10,size(rgb2gray(im1l)))];
harrislapVecL = [harrislapVecL, countFeatures(harrislaptest1L,harrislaptest5L,10,size(rgb2gray(im1l)))];

save();


