harriscolortest1 = geraFeatures(im1,'harriscolor');
harriscolortest2 = geraFeatures(im2,'harriscolor');
harriscolortest3 = geraFeatures(im3,'harriscolor');
harriscolortest4 = geraFeatures(im4,'harriscolor');
harriscolortest5 = geraFeatures(im5,'harriscolor');
harriscolorVec = [size(harriscolortest1,1)];
harriscolorVec = [harriscolorVec, countFeatures(harriscolortest1,harriscolortest2,10,size(rgb2gray(im1)))];
harriscolorVec = [harriscolorVec, countFeatures(harriscolortest1,harriscolortest3,10,size(rgb2gray(im1)))];
harriscolorVec = [harriscolorVec, countFeatures(harriscolortest1,harriscolortest4,10,size(rgb2gray(im1)))];
harriscolorVec = [harriscolorVec, countFeatures(harriscolortest1,harriscolortest5,10,size(rgb2gray(im1)))];
save();

 harriscolortest1L = geraFeatures(im1l,'harriscolor');
 harriscolortest2L = geraFeatures(im2l,'harriscolor');
 harriscolortest3L = geraFeatures(im3l,'harriscolor');
 harriscolortest4L = geraFeatures(im4l,'harriscolor');
 harriscolortest5L = geraFeatures(im5l,'harriscolor');
 
 harriscolorVecL = [size(harriscolortest1L,1)];
harriscolorVecL = [harriscolorVecL, countFeatures(harriscolortest1L,harriscolortest2L,10,size(rgb2gray(im1l)))];
harriscolorVecL = [harriscolorVecL, countFeatures(harriscolortest1L,harriscolortest3L,10,size(rgb2gray(im1l)))];
harriscolorVecL = [harriscolorVecL, countFeatures(harriscolortest1L,harriscolortest4L,10,size(rgb2gray(im1l)))];
harriscolorVecL = [harriscolorVecL, countFeatures(harriscolortest1L,harriscolortest5L,10,size(rgb2gray(im1l)))];